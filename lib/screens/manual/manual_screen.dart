import 'package:flutter/material.dart';

import '../../widgets/manual_upload_card.dart';

class ManualScreen extends StatelessWidget {
  const ManualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manual de usuario',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Consulta el documento oficial de referencia de la plataforma.',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              SizedBox(height: 24),
              ManualUploadCard(),
            ],
          ),
        ),
      ),
    );
  }
}
