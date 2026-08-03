import 'package:flutter_test/flutter_test.dart';
import 'package:tao/data/sintomas_data.dart';

void main() {
  test('every symptom has complete, specific content', () {
    const validCategories = {
      'Dolor',
      'Emocional',
      'Digestivo',
      'Neurológico',
      'Reproductivo',
      'Metabolismo',
      'Clínico',
    };

    expect(sintomas, hasLength(15));
    expect(sintomas.map((item) => item.nombre).toSet(), hasLength(15));

    for (final sintoma in sintomas) {
      expect(validCategories, contains(sintoma.categoria));
      expect(sintoma.descripcion.length, greaterThan(100));
      expect(sintoma.comoayuda.length, greaterThan(100));
      expect(sintoma.objetivos.length, greaterThan(100));
      expect(sintoma.resultados.length, greaterThan(100));
      expect(sintoma.objetivos, isNot(contains('¿')));
      expect(sintoma.resultados, isNot(contains('¿')));
    }
  });

  test('acupuncture sections are not duplicated between symptoms', () {
    final sections = <String>{};

    for (final sintoma in sintomas) {
      for (final text in [
        sintoma.comoayuda,
        sintoma.objetivos,
        sintoma.resultados,
      ]) {
        expect(sections.add(text), isTrue);
      }
    }
  });
}
