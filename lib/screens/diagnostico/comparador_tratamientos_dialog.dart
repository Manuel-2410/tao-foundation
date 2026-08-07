import 'package:flutter/material.dart';

import '../../models/sintoma.dart';

const enfoqueOrientalPorSintoma = <String, String>{
  'Dolor estomacal':
      'Desde la medicina oriental se busca comprender cómo se relacionan la molestia digestiva, los horarios de alimentación y el estrés. La acupuntura es el eje del acompañamiento y puede combinarse con apoyo nutricional y técnicas de relajación.',
  'Ciática':
      'El enfoque oriental prioriza la acupuntura para acompañar el dolor irradiado y la tensión lumbar. Puede integrarse con fisioterapia y trabajo muscular, siempre después de descartar pérdida de fuerza u otros signos neurológicos.',
  'Dolor muscular':
      'La medicina oriental aborda el dolor muscular considerando la zona afectada, la sobrecarga y el estado general de la persona. La acupuntura funciona como tratamiento central y puede reforzarse con ventosas, masaje, fisioterapia y nutrición.',
  'Parálisis facial o de Bell':
      'Tras la valoración médica inmediata, la medicina oriental puede acompañar la recuperación con acupuntura individualizada. La fisioterapia facial y el soporte nutricional se integran sin sustituir medicamentos, cuidado ocular o rehabilitación.',
  'Fertilidad':
      'La medicina oriental ofrece un acompañamiento integral centrado en acupuntura, descanso y manejo del estrés durante el proceso de fertilidad. La nutrición y otras terapias se coordinan siempre con el especialista en reproducción.',
  'Gastritis':
      'El abordaje oriental utiliza la acupuntura como apoyo para la molestia, la náusea y la tensión relacionada con el estrés. El diagnóstico nutricional ayuda a personalizar hábitos sin reemplazar el tratamiento de la causa médica.',
  'Colitis':
      'Desde la medicina oriental se observa la relación entre digestión, tensión emocional y ritmo cotidiano. La acupuntura se plantea como base complementaria, junto con relajación y nutrición adaptada al diagnóstico gastroenterológico.',
  'Control de peso':
      'La medicina oriental puede apoyar el proceso mediante acupuntura y auriculoterapia orientadas al estrés y la adherencia a hábitos. El diagnóstico nutricional dirige la alimentación y la fisioterapia facilita movimiento seguro cuando es necesario.',
  'Insomnio':
      'El enfoque oriental prioriza la acupuntura para favorecer relajación y regularidad del descanso. La auriculoterapia, el masaje y la revisión nutricional pueden reforzar el plan junto con higiene del sueño y atención de la causa.',
  'Ansiedad':
      'La medicina oriental puede acompañar la ansiedad con acupuntura enfocada en disminuir la tensión percibida y favorecer calma. Auriculoterapia, masaje y nutrición complementan, pero no sustituyen la atención psicológica o médica.',
  'Bienestar emocional':
      'La acupuntura es el punto central del acompañamiento oriental para relajación, descanso y manifestaciones físicas del estrés. Auriculoterapia, masaje y nutrición pueden integrarse al cuidado profesional de la salud emocional.',
  'Fascitis plantar':
      'La medicina oriental utiliza la acupuntura para acompañar el dolor localizado y la tensión de la cadena muscular. Fisioterapia, masaje, ventosas y nutrición pueden apoyar la carga progresiva y la recuperación funcional.',
  'Migraña':
      'El enfoque oriental considera la frecuencia de las crisis, sus desencadenantes y el estado general. La acupuntura se integra como apoyo preventivo, reforzada por relajación, auriculoterapia y diagnóstico nutricional.',
  'Alteraciones de la tiroides':
      'La medicina oriental solo puede acompañar el bienestar mediante acupuntura para estrés, descanso o molestias asociadas. La nutrición se adapta al diagnóstico sin prometer regular hormonas ni reemplazar endocrinología o medicación.',
  'Fibromialgia':
      'La visión integral de la medicina oriental permite adaptar la acupuntura al dolor, descanso, fatiga y tolerancia de cada persona. Fisioterapia gradual, masaje, auriculoterapia, ventosas prudentes y nutrición apoyan el plan multidisciplinario.',
};

class _Opcion {
  const _Opcion({
    required this.nombre,
    required this.icono,
    required this.color,
    required this.aporte,
    required this.limite,
  });

  final String nombre;
  final IconData icono;
  final Color color;
  final String aporte;
  final String limite;
}

const _opciones = [
  _Opcion(
    nombre: 'Acupuntura',
    icono: Icons.healing_outlined,
    color: Color(0xFF2E5E3A),
    aporte:
        'Tratamiento principal de la clínica dentro del enfoque de medicina oriental. El plan se personaliza después de valorar el síntoma y el estado general.',
    limite:
        'Es complementaria y no sustituye estudios, medicamentos ni atención urgente.',
  ),
  _Opcion(
    nombre: 'Auriculoterapia',
    icono: Icons.self_improvement_outlined,
    color: Color(0xFF7A5AA6),
    aporte:
        'Refuerza el enfoque oriental mediante la estimulación de puntos auriculares y puede apoyar relajación, descanso o adherencia a hábitos.',
    limite: 'Se selecciona según valoración y como complemento del plan.',
  ),
  _Opcion(
    nombre: 'Terapia de ventosas',
    icono: Icons.bubble_chart_outlined,
    color: Color(0xFFC06A49),
    aporte:
        'Técnica de la medicina oriental que puede complementar la acupuntura cuando existe tensión o sobrecarga muscular localizada.',
    limite:
        'Puede dejar marcas temporales y no se aplica si existen contraindicaciones.',
  ),
  _Opcion(
    nombre: 'Masaje relajante',
    icono: Icons.spa_outlined,
    color: Color(0xFFB48328),
    aporte:
        'Puede favorecer relajación corporal y preparar o reforzar el trabajo realizado durante el plan de acupuntura.',
    limite: 'No reemplaza fisioterapia ni el tratamiento de una lesión.',
  ),
  _Opcion(
    nombre: 'Fisioterapia',
    icono: Icons.accessibility_new_outlined,
    color: Color(0xFF3975A7),
    aporte:
        'Complementa la acupuntura con evaluación funcional, ejercicio, movilidad y recuperación progresiva.',
    limite: 'Requiere su propia valoración y objetivos de rehabilitación.',
  ),
  _Opcion(
    nombre: 'Diagnóstico nutricional',
    icono: Icons.restaurant_menu_outlined,
    color: Color(0xFF4B8A45),
    aporte:
        'Amplía la visión integral al revisar alimentación, hidratación, hábitos y necesidades individuales relacionadas con el bienestar.',
    limite: 'Debe realizarlo un profesional de nutrición.',
  ),
];

class ComparadorTratamientosDialog extends StatelessWidget {
  const ComparadorTratamientosDialog({super.key, required this.sintoma});

  final Sintoma sintoma;

  List<_Opcion> get _sugeridas {
    final texto = sintoma.complementos.toLowerCase();
    return _opciones.where((opcion) {
      if (opcion.nombre == 'Acupuntura' ||
          opcion.nombre == 'Diagnóstico nutricional') {
        return true;
      }
      return texto.contains(opcion.nombre.toLowerCase()) ||
          (opcion.nombre == 'Terapia de ventosas' &&
              texto.contains('ventosas')) ||
          (opcion.nombre == 'Masaje relajante' && texto.contains('masaje'));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final enfoque =
        enfoqueOrientalPorSintoma[sintoma.nombre] ??
        'La acupuntura se considera el eje del enfoque oriental y los demás servicios se seleccionan como complementos después de una valoración individual.';

    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000, maxHeight: 760),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 12, 12),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFF2E5E3A),
                    child: Icon(Icons.compare_arrows, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Comparar opciones sugeridas',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          sintoma.nombre,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: 'Cerrar',
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E5E3A).withValues(alpha: .08),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFF2E5E3A).withValues(alpha: .3),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Enfoque de medicina oriental para este síntoma',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(enfoque, style: const TextStyle(height: 1.45)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 22),
                    Text(
                      '${_sugeridas.length} opciones para valorar',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final ancho = constraints.maxWidth;
                        final columnas = ancho >= 780
                            ? 3
                            : (ancho >= 500 ? 2 : 1);
                        final anchoCard =
                            (ancho - ((columnas - 1) * 12)) / columnas;
                        return Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: _sugeridas
                              .map(
                                (opcion) => SizedBox(
                                  width: anchoCard,
                                  child: _OpcionCard(opcion: opcion),
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'La comparación orienta la conversación con la clínica; la combinación final se define después de valorar antecedentes, objetivos y posibles contraindicaciones.',
                      style: TextStyle(fontSize: 12, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OpcionCard extends StatelessWidget {
  const _OpcionCard({required this.opcion});

  final _Opcion opcion;

  @override
  Widget build(BuildContext context) {
    final principal = opcion.nombre == 'Acupuntura';
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: opcion.color.withValues(alpha: .06),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: opcion.color.withValues(alpha: principal ? .8 : .3),
          width: principal ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: opcion.color,
                child: Icon(opcion.icono, color: Colors.white, size: 20),
              ),
              const Spacer(),
              if (principal)
                const Chip(
                  label: Text('Principal'),
                  visualDensity: VisualDensity.compact,
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            opcion.nombre,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(opcion.aporte, style: const TextStyle(height: 1.4)),
          const SizedBox(height: 10),
          Text(
            opcion.limite,
            style: TextStyle(
              fontSize: 12,
              height: 1.35,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
