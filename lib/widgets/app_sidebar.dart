import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_section.dart';
import '../providers/navigation_provider.dart';

class AppSidebar extends StatefulWidget {
  const AppSidebar({super.key});

  @override
  State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  static const double _expandedWidth = 250;
  static const double _collapsedWidth = 76;

  bool _isCollapsed = false;

  void _toggleSidebar() {
    setState(() => _isCollapsed = !_isCollapsed);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _isCollapsed ? _collapsedWidth : _expandedWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF14371D), Color(0xFF0B2411)],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
              child: Row(
                mainAxisAlignment: _isCollapsed
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  if (!_isCollapsed)
                    const Text(
                      'TAO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  IconButton(
                    onPressed: _toggleSidebar,
                    tooltip: _isCollapsed ? 'Expandir menú' : 'Contraer menú',
                    icon: Icon(
                      _isCollapsed
                          ? Icons.keyboard_double_arrow_right
                          : Icons.keyboard_double_arrow_left,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  _menu(context, Icons.home, 'Inicio', AppSection.home),
                  _menu(
                    context,
                    Icons.local_hospital,
                    'Zona Río',
                    AppSection.clinicaZonaRio,
                  ),
                  _menu(
                    context,
                    Icons.apartment,
                    '5 y 10',
                    AppSection.clinicaCincoDiez,
                  ),
                  _menu(
                    context,
                    Icons.message,
                    'Contacto',
                    AppSection.contacto,
                  ),
                  _menu(
                    context,
                    Icons.chat,
                    'Seguimiento',
                    AppSection.seguimiento,
                  ),
                  _menu(
                    context,
                    Icons.account_tree,
                    'Ventas',
                    AppSection.procesoVentas,
                  ),
                  _menu(
                    context,
                    Icons.psychology,
                    'Síntomas',
                    AppSection.sintomas,
                  ),
                  _menu(
                    context,
                    Icons.play_circle,
                    'Videos',
                    AppSection.videos,
                  ),
                  _menu(
                    context,
                    Icons.menu_book_outlined,
                    'Manual',
                    AppSection.manualUsuario,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu(
    BuildContext context,
    IconData icon,
    String title,
    AppSection section,
  ) {
    final selected = context.watch<NavigationProvider>().current == section;

    final tile = ListTile(
      selected: selected,
      selectedTileColor: Colors.white.withValues(alpha: 0.12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: _isCollapsed
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 12,
      onTap: () {
        context.read<NavigationProvider>().changeSection(section);
      },
      leading: _isCollapsed ? null : Icon(icon, color: Colors.white),
      title: _isCollapsed
          ? Center(child: Icon(icon, color: Colors.white))
          : Text(title, style: const TextStyle(color: Colors.white)),
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: _isCollapsed ? Tooltip(message: title, child: tile) : tile,
    );
  }
}
