import 'package:flutter/material.dart';

void main() => runApp(const ComparadorDemoApp());

class ComparadorDemoApp extends StatelessWidget {
  const ComparadorDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comparador de tratamientos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF20766C),
          surface: const Color(0xFFF8FAF8),
        ),
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const ComparadorPage(),
    );
  }
}

class Tratamiento {
  const Tratamiento({
    required this.nombre,
    required this.icono,
    required this.color,
    required this.enfoque,
    required this.beneficio,
    required this.precaucion,
    required this.sesiones,
    required this.idealPara,
  });

  final String nombre;
  final IconData icono;
  final Color color;
  final String enfoque;
  final String beneficio;
  final String precaucion;
  final String sesiones;
  final Set<String> idealPara;
}

const tratamientos = [
  Tratamiento(
    nombre: 'Acupuntura',
    icono: Icons.healing_outlined,
    color: Color(0xFF27776D),
    enfoque: 'Dolor, tensión y bienestar general',
    beneficio: 'Puede apoyar la modulación del dolor y la relajación.',
    precaucion: 'Requiere valoración y personal capacitado.',
    sesiones: 'Plan personalizado',
    idealPara: {'Dolor muscular', 'Ciática', 'Insomnio', 'Ansiedad', 'Migraña'},
  ),
  Tratamiento(
    nombre: 'Auriculoterapia',
    icono: Icons.self_improvement_outlined,
    color: Color(0xFF7A5AA6),
    enfoque: 'Estrés, descanso y acompañamiento de hábitos',
    beneficio: 'Puede favorecer calma y adherencia a rutinas saludables.',
    precaucion: 'Es un apoyo complementario, no un diagnóstico.',
    sesiones: 'Según valoración',
    idealPara: {'Insomnio', 'Ansiedad', 'Migraña', 'Control de peso'},
  ),
  Tratamiento(
    nombre: 'Terapia de ventosas',
    icono: Icons.bubble_chart_outlined,
    color: Color(0xFFC06A49),
    enfoque: 'Tensión y sobrecarga muscular',
    beneficio: 'Puede brindar sensación de descarga y relajación local.',
    precaucion: 'Puede dejar marcas temporales y tiene contraindicaciones.',
    sesiones: 'Uso puntual',
    idealPara: {'Dolor muscular', 'Ciática', 'Fascitis plantar'},
  ),
  Tratamiento(
    nombre: 'Masaje relajante',
    icono: Icons.spa_outlined,
    color: Color(0xFFB48328),
    enfoque: 'Estrés, tensión y descanso',
    beneficio: 'Favorece relajación y bienestar corporal.',
    precaucion: 'No sustituye la rehabilitación de una lesión.',
    sesiones: 'Según necesidad',
    idealPara: {'Dolor muscular', 'Insomnio', 'Ansiedad', 'Migraña'},
  ),
  Tratamiento(
    nombre: 'Fisioterapia',
    icono: Icons.accessibility_new_outlined,
    color: Color(0xFF3975A7),
    enfoque: 'Movilidad, fuerza y recuperación funcional',
    beneficio: 'Ayuda a recuperar funciones mediante un plan progresivo.',
    precaucion: 'Necesita evaluación física y objetivos funcionales.',
    sesiones: 'Plan de rehabilitación',
    idealPara: {'Dolor muscular', 'Ciática', 'Fascitis plantar'},
  ),
  Tratamiento(
    nombre: 'Diagnóstico nutricional',
    icono: Icons.restaurant_menu_outlined,
    color: Color(0xFF4B8A45),
    enfoque: 'Alimentación, hábitos y estado nutricional',
    beneficio: 'Permite crear recomendaciones alimentarias individualizadas.',
    precaucion: 'Debe realizarlo un profesional de nutrición.',
    sesiones: 'Evaluación y seguimiento',
    idealPara: {'Control de peso', 'Dolor estomacal', 'Gastritis', 'Colitis'},
  ),
];

class ComparadorPage extends StatefulWidget {
  const ComparadorPage({super.key});

  @override
  State<ComparadorPage> createState() => _ComparadorPageState();
}

class _ComparadorPageState extends State<ComparadorPage> {
  String sintoma = 'Dolor muscular';
  final seleccionados = <int>{0, 4};

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.sizeOf(context).width;
    final compacta = ancho < 760;
    final comparados = seleccionados.map((i) => tratamientos[i]).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFF20766C),
              child: Icon(Icons.eco_outlined, color: Colors.white),
            ),
            SizedBox(width: 12),
            Text('TAO  |  Comparador'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: compacta ? 16 : 36,
          vertical: 28,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1180),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Compara tus opciones',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF173F3A),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Conoce el enfoque, beneficios y precauciones de cada complemento antes de solicitar una valoración.',
                  style: TextStyle(fontSize: 16, color: Color(0xFF536660)),
                ),
                const SizedBox(height: 24),
                _SelectorSintoma(
                  valor: sintoma,
                  onChanged: (value) => setState(() => sintoma = value!),
                ),
                const SizedBox(height: 20),
                Text(
                  'Selecciona hasta 3 opciones para comparar',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(tratamientos.length, (index) {
                    final item = tratamientos[index];
                    final activo = seleccionados.contains(index);
                    return FilterChip(
                      selected: activo,
                      avatar: Icon(item.icono, size: 18),
                      label: Text(item.nombre),
                      onSelected: (value) {
                        if (value && seleccionados.length >= 3) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Puedes comparar hasta 3 opciones.',
                              ),
                            ),
                          );
                          return;
                        }
                        setState(() {
                          value
                              ? seleccionados.add(index)
                              : seleccionados.remove(index);
                        });
                      },
                    );
                  }),
                ),
                const SizedBox(height: 26),
                if (comparados.isEmpty)
                  const _EstadoVacio()
                else
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final columnas = compacta ? 1 : comparados.length;
                      final cardWidth =
                          (constraints.maxWidth - (columnas - 1) * 16) /
                          columnas;
                      return Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: comparados
                            .map(
                              (item) => SizedBox(
                                width: cardWidth,
                                child: _TratamientoCard(
                                  tratamiento: item,
                                  recomendado: item.idealPara.contains(sintoma),
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF8E8),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFE7D5A5)),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline, color: Color(0xFF8A6819)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Esta comparación es informativa. La recomendación final depende de una valoración profesional y no sustituye un diagnóstico médico.',
                          style: TextStyle(height: 1.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectorSintoma extends StatelessWidget {
  const _SelectorSintoma({required this.valor, required this.onChanged});

  final String valor;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    const opciones = [
      'Dolor muscular',
      'Ciática',
      'Fascitis plantar',
      'Dolor estomacal',
      'Gastritis',
      'Colitis',
      'Insomnio',
      'Ansiedad',
      'Migraña',
      'Control de peso',
    ];
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFDCE6E2)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.medical_information_outlined,
            color: Color(0xFF20766C),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Síntoma o necesidad',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2),
                Text(
                  'Las opciones sugeridas se marcarán en cada tarjeta.',
                  style: TextStyle(fontSize: 12, color: Color(0xFF687B75)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          DropdownButton<String>(
            value: valor,
            underline: SizedBox.shrink(),
            items: opciones
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class _TratamientoCard extends StatelessWidget {
  const _TratamientoCard({
    required this.tratamiento,
    required this.recomendado,
  });

  final Tratamiento tratamiento;
  final bool recomendado;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: recomendado ? tratamiento.color : const Color(0xFFDCE6E2),
          width: recomendado ? 2 : 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: tratamiento.color.withValues(alpha: .12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(tratamiento.icono, color: tratamiento.color),
                ),
                const Spacer(),
                if (recomendado)
                  Chip(
                    avatar: const Icon(Icons.check_circle_outline, size: 17),
                    label: const Text(
                      'Sugerido',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: tratamiento.color.withValues(alpha: .1),
                    side: BorderSide.none,
                  ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              tratamiento.nombre,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 18),
            _Dato(titulo: 'Enfoque', texto: tratamiento.enfoque),
            _Dato(titulo: 'Beneficio esperado', texto: tratamiento.beneficio),
            _Dato(titulo: 'Frecuencia', texto: tratamiento.sesiones),
            _Dato(
              titulo: 'A considerar',
              texto: tratamiento.precaucion,
              icono: Icons.shield_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class _Dato extends StatelessWidget {
  const _Dato({
    required this.titulo,
    required this.texto,
    this.icono = Icons.check_circle_outline,
  });

  final String titulo;
  final String texto;
  final IconData icono;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icono, size: 18, color: const Color(0xFF56736C)),
          const SizedBox(width: 9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF667A74),
                  ),
                ),
                const SizedBox(height: 3),
                Text(texto, style: const TextStyle(height: 1.35)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EstadoVacio extends StatelessWidget {
  const _EstadoVacio();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Text('Selecciona al menos una opción para comenzar.'),
      ),
    );
  }
}
