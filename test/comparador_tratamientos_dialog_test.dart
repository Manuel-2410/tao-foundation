import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tao/data/sintomas_data.dart';
import 'package:tao/screens/diagnostico/comparador_tratamientos_dialog.dart';

void main() {
  testWidgets('shows a symptom-specific oriental medicine comparison', (
    tester,
  ) async {
    final sintoma = sintomas.firstWhere(
      (item) => item.nombre == 'Dolor muscular',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: ComparadorTratamientosDialog(sintoma: sintoma)),
      ),
    );

    expect(find.text('Comparar opciones sugeridas'), findsOneWidget);
    expect(find.text('Dolor muscular'), findsOneWidget);
    expect(
      find.text('Enfoque de medicina oriental para este síntoma'),
      findsOneWidget,
    );
    expect(find.text('Acupuntura'), findsOneWidget);
    expect(find.text('Principal'), findsOneWidget);
    expect(find.text('Terapia de ventosas'), findsOneWidget);
    expect(find.text('Fisioterapia'), findsOneWidget);
    expect(find.text('Diagnóstico nutricional'), findsOneWidget);
  });
}
