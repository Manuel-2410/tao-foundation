import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_section.dart';
import '../providers/navigation_provider.dart';

import '../screens/home/dashboard_content.dart';
import '../screens/mensajes/contacto_inicial_screen.dart';
import '../screens/mensajes/seguimiento_screen.dart';

import '../screens/diagnostico/sintomas_screen.dart';
import '../screens/videos/videos_screen.dart';
import '../screens/clinicas/clinica_screen.dart';
import '../screens/proceso_lead/proceso_lead_screen.dart';
import '../screens/manual/manual_screen.dart';

import '../data/cincoy10_data.dart' as cinco_diez_data;
import '../data/zona_rio_data.dart';

class ContentArea extends StatelessWidget {
  const ContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, nav, child) {
        switch (nav.current) {
          case AppSection.home:
            return const DashboardContent();

          case AppSection.clinicaZonaRio:
            return ClinicaScreen(
              titulo: "ZONA RIO",

              tratamientos: tratamientosZonaRio,
            );

          case AppSection.clinicaCincoDiez:
            return ClinicaScreen(
              titulo: "5 y 10",

              tratamientos: cinco_diez_data.tratamientosZonaRio,
            );

          case AppSection.contacto:
            return const ContactoInicialScreen();

          case AppSection.seguimiento:
            return const SeguimientoScreen();

          case AppSection.procesoVentas:
            return const ProcesoLeadScreen();

          case AppSection.sintomas:
            return const SintomasScreen();

          case AppSection.videos:
            return const VideosScreen();

          case AppSection.manualUsuario:
            return const ManualScreen();
        }
      },
    );
  }
}
