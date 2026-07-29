import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

class ManualPdfViewerScreen extends StatelessWidget {
  const ManualPdfViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manual de usuario')),
      body: PdfViewer.asset('assets/docs/manual_usuario_tao.pdf'),
    );
  }
}
