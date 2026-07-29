import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/lead_flow_data.dart';
import '../../providers/flow_provider.dart';
import '../../widgets/flow_connection_painter.dart';
import '../../widgets/flow_detail_panel.dart';
import '../../widgets/flow_group.dart';
import '../../widgets/flow_node_widget.dart';

class ProcesoLeadScreen extends StatefulWidget {
  const ProcesoLeadScreen({super.key});

  @override
  State<ProcesoLeadScreen> createState() => _ProcesoLeadScreenState();
}

class _ProcesoLeadScreenState extends State<ProcesoLeadScreen> {
  static const _canvasSize = Size(1360, 900);
  final TransformationController _transformationController =
      TransformationController();
  double _scale = 1;

  @override
  void initState() {
    super.initState();
    _transformationController.addListener(_updateScale);
  }

  @override
  void dispose() {
    _transformationController
      ..removeListener(_updateScale)
      ..dispose();
    super.dispose();
  }

  void _updateScale() {
    final nextScale = _transformationController.value.getMaxScaleOnAxis();
    if ((nextScale - _scale).abs() > .005 && mounted) {
      setState(() => _scale = nextScale);
    }
  }

  void _setScale(double value) {
    final next = value.clamp(.45, 2.2);
    final matrix = _transformationController.value.clone()
      ..setEntry(0, 0, next)
      ..setEntry(1, 1, next)
      ..setEntry(2, 2, 1);
    _transformationController.value = matrix;
  }

  void _resetView() {
    _transformationController.value = Matrix4.identity();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ColoredBox(
      color: colors.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(
                scale: _scale,
                onZoomOut: () => _setScale(_scale - .1),
                onZoomIn: () => _setScale(_scale + .1),
                onReset: _resetView,
                onLegend: () => _showLegend(context),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: Consumer<FlowProvider>(
                  builder: (context, provider, child) {
                    return Stack(
                      children: [
                        Positioned.fill(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: colors.surfaceContainerLowest,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: colors.outlineVariant),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x0D000000),
                                  blurRadius: 14,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: InteractiveViewer(
                                transformationController:
                                    _transformationController,
                                constrained: false,
                                minScale: .45,
                                maxScale: 2.2,
                                boundaryMargin: const EdgeInsets.all(180),
                                child: _FlowCanvas(provider: provider),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          bottom: 14,
                          child: _VerticalZoomControls(
                            onZoomIn: () => _setScale(_scale + .1),
                            onZoomOut: () => _setScale(_scale - .1),
                            onReset: _resetView,
                          ),
                        ),
                        if (provider.seleccionado != null)
                          Positioned(
                            right: 14,
                            bottom: 16,
                            child: FlowDetailPanel(
                              node: provider.seleccionado!,
                              onClose: provider.cerrarDetalle,
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              const _FlowLegend(),
            ],
          ),
        ),
      ),
    );
  }

  void _showLegend(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leyenda del proceso'),
        content: const SizedBox(width: 520, child: _FlowLegend(wrap: true)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}

class _FlowCanvas extends StatelessWidget {
  final FlowProvider provider;

  const _FlowCanvas({required this.provider});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _ProcesoLeadScreenState._canvasSize.width,
      height: _ProcesoLeadScreenState._canvasSize.height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const FlowGroup(
            title: 'Cliente',
            // color: clienteColor,
            left: 0,
            top: 0,
            width: 200,
            height: 900,
          ),
          const FlowGroup(
            title: 'Interés',
            // color: interesColor,
            left: 200,
            top: 0,
            width: 210,
            height: 900,
          ),
          const FlowGroup(
            title: 'Manejo',
            // color: manejoColor,
            top: 0,
            left: 410,
            width: 215,
            height: 900,
          ),
          const FlowGroup(
            title: 'Condición',
            // color: condicionColor,
            left: 625,
            top: 0,
            width: 225,
            height: 900,
          ),
          const FlowGroup(
            title: 'Seguimiento',
            // color: seguimientoColor,
            left: 850,
            top: 0,
            width: 270,
            height: 900,
          ),
          const FlowGroup(
            title: 'Agendado',
            // color: agendadoColor,
            left: 1120,
            top: 0,
            width: 240,
            height: 900,
          ),
          CustomPaint(
            size: _ProcesoLeadScreenState._canvasSize,
            painter: FlowConnectionPainter(provider.nodes, flowConnections),
          ),
          ...provider.nodes.map(
            (node) => FlowNodeWidget(
              node: node,
              onTap: () => provider.seleccionar(node),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final double scale;
  final VoidCallback onZoomOut;
  final VoidCallback onZoomIn;
  final VoidCallback onReset;
  final VoidCallback onLegend;

  const _Header({
    required this.scale,
    required this.onZoomOut,
    required this.onZoomIn,
    required this.onReset,
    required this.onLegend,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final controls = _HeaderControls(
          scale: scale,
          onZoomOut: onZoomOut,
          onZoomIn: onZoomIn,
          onReset: onReset,
          onLegend: onLegend,
        );

        if (constraints.maxWidth < 920) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _HeaderTitle(),
              const SizedBox(height: 14),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: controls,
              ),
            ],
          );
        }

        return Row(
          children: [
            const Expanded(child: _HeaderTitle()),
            controls,
          ],
        );
      },
    );
  }

  static ButtonStyle buttonStyle(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return OutlinedButton.styleFrom(
      foregroundColor: colors.onSurface,
      backgroundColor: colors.surfaceContainerLow,
      side: BorderSide(color: colors.outlineVariant),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PROCESO DE LEAD',
          style: TextStyle(
            color: colors.primary,
            fontSize: 26,
            fontWeight: FontWeight.w800,
            letterSpacing: -.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Manual De La Cruz  |  Junio 29, 2026',
          style: TextStyle(color: colors.onSurfaceVariant, fontSize: 14),
        ),
      ],
    );
  }
}

class _HeaderControls extends StatelessWidget {
  final double scale;
  final VoidCallback onZoomOut;
  final VoidCallback onZoomIn;
  final VoidCallback onReset;
  final VoidCallback onLegend;

  const _HeaderControls({
    required this.scale,
    required this.onZoomOut,
    required this.onZoomIn,
    required this.onReset,
    required this.onLegend,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ZoomDisplay(scale: scale, onZoomOut: onZoomOut, onZoomIn: onZoomIn),
        const SizedBox(width: 12),
        OutlinedButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.control_camera_outlined, size: 18),
          label: const Text('Restablecer vista'),
          style: _Header.buttonStyle(context),
        ),
        const SizedBox(width: 10),
        OutlinedButton.icon(
          onPressed: onLegend,
          icon: const Icon(Icons.list, size: 19),
          label: const Text('Ver leyenda'),
          style: _Header.buttonStyle(context),
        ),
      ],
    );
  }
}

class _ZoomDisplay extends StatelessWidget {
  final double scale;
  final VoidCallback onZoomOut;
  final VoidCallback onZoomIn;

  const _ZoomDisplay({
    required this.scale,
    required this.onZoomOut,
    required this.onZoomIn,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        border: Border.all(color: colors.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          IconButton(onPressed: onZoomOut, icon: const Icon(Icons.remove)),
          Container(
            width: 64,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(color: Color(0xFFE8EBEF)),
              ),
            ),
            child: Text(
              '${(scale * 100).round()}%',
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(onPressed: onZoomIn, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}

class _VerticalZoomControls extends StatelessWidget {
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  final VoidCallback onReset;

  const _VerticalZoomControls({
    required this.onZoomIn,
    required this.onZoomOut,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: colors.outlineVariant),
        boxShadow: const [BoxShadow(color: Color(0x17000000), blurRadius: 8)],
      ),
      child: Column(
        children: [
          IconButton(
            tooltip: 'Mover el lienzo',
            onPressed: () {},
            icon: const Icon(Icons.pan_tool_outlined, size: 19),
          ),
          IconButton(
            tooltip: 'Acercar',
            onPressed: onZoomIn,
            icon: const Icon(Icons.add_circle_outline, size: 20),
          ),
          IconButton(
            tooltip: 'Alejar',
            onPressed: onZoomOut,
            icon: const Icon(Icons.remove, size: 21),
          ),
          IconButton(
            tooltip: 'Restablecer',
            onPressed: onReset,
            icon: const Icon(Icons.fullscreen, size: 22),
          ),
        ],
      ),
    );
  }
}

class _FlowLegend extends StatelessWidget {
  final bool wrap;

  const _FlowLegend({this.wrap = false});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    const items = [
      ('Cliente', clienteColor),
      ('Interés', interesColor),
      ('Manejo', manejoColor),
      ('Condición', condicionColor),
      ('Seguimiento', seguimientoColor),
      ('Agendado', agendadoColor),
    ];
    final children = [
      for (final item in items)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: item.$2,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 7),
              Text(
                item.$1,
                style: TextStyle(
                  fontSize: 11.5,
                  color: colors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_outlined,
              size: 17,
              color: colors.onSurfaceVariant,
            ),
            const SizedBox(width: 6),
            Text(
              'Imagen de referencia',
              style: TextStyle(fontSize: 11.5, color: colors.onSurfaceVariant),
            ),
          ],
        ),
      ),
    ];
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: colors.outlineVariant),
      ),
      child: wrap
          ? Wrap(alignment: WrapAlignment.center, children: children)
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            ),
    );
  }
}
