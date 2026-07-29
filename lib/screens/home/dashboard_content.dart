import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/app_section.dart';
import '../../providers/navigation_provider.dart';
import '../../widgets/dashboard_card.dart';
import '../../widgets/manual_upload_card.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  void _openSection(BuildContext context, AppSection section) {
    context.read<NavigationProvider>().changeSection(section);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            "Bienvenido",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "TAO Acupuntura",
            style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text(
            "Terapia Oriental Integral",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),

          const SizedBox(height: 40),

          const Text(
            "Clínicas",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          LayoutBuilder(
            builder: (context, constraints) {
              int columns = 1;

              if (constraints.maxWidth > 1200) {
                columns = 3;
              } else if (constraints.maxWidth > 700) {
                columns = 2;
              }

              return GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                crossAxisCount: columns,

                crossAxisSpacing: 20,
                mainAxisSpacing: 20,

                childAspectRatio: 1.55,

                children: [
                  DashboardCard(
                    title: "Zona Río",
                    subtitle: "Sucursal Zona Río",
                    image: "assets/images/rio.png",

                    onTap: () {
                      _openSection(context, AppSection.clinicaZonaRio);
                    },
                  ),

                  DashboardCard(
                    title: "5 y 10",
                    subtitle: "Sucursal 5 y 10",
                    image: "assets/images/c5y10.png",
                    onTap: () {
                      _openSection(context, AppSection.clinicaCincoDiez);
                    },
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 50),

          const ManualUploadCard(compact: true),

          const SizedBox(height: 50),

          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 900) {
                return Column(
                  children: [
                    _mensajes(context),

                    const SizedBox(height: 30),

                    _herramientas(context),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Expanded(child: _mensajes(context)),

                  const SizedBox(width: 40),

                  Expanded(child: _herramientas(context)),
                ],
              );
            },
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _mensajes(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Mensajes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.message)),

              title: const Text("Contacto Inicial"),

              subtitle: const Text("Enviar mensaje inicial"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                _openSection(context, AppSection.contacto);
              },
            ),

            const Divider(),

            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.chat)),

              title: const Text("Seguimiento"),

              subtitle: const Text("Seguimiento de pacientes"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                _openSection(context, AppSection.seguimiento);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _herramientas(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Herramientas",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.psychology)),

              title: const Text("Síntomas"),

              subtitle: const Text("Explorar síntomas"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                _openSection(context, AppSection.sintomas);
              },
            ),

            const Divider(),

            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.play_circle)),

              title: const Text("Videos"),

              subtitle: const Text("Testimonios y procesos"),

              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                _openSection(context, AppSection.videos);
              },
            ),
          ],
        ),
      ),
    );
  }
}
