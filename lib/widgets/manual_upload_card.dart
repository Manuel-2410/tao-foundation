import 'package:flutter/material.dart';

import '../screens/manual/manual_pdf_viewer_screen.dart';

class ManualUploadCard extends StatelessWidget {
  final bool compact;

  const ManualUploadCard({super.key, this.compact = false});

  void _openManual(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const ManualPdfViewerScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.all(compact ? 20 : 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: compact ? 23 : 28,
                  backgroundColor: colorScheme.primaryContainer,
                  child: Icon(
                    Icons.picture_as_pdf_outlined,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manual de usuario',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text('Documento oficial de consulta para el equipo TAO'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: compact ? 18 : 26),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Row(
                children: [
                  Icon(Icons.verified_outlined, size: 34),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TAO MANUAL DE USUARIO.pdf',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text('Documento oficial · 14 páginas · Solo lectura'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: compact ? double.infinity : null,
              child: FilledButton.icon(
                onPressed: () => _openManual(context),
                icon: const Icon(Icons.open_in_new),
                label: const Text('Ver manual'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
