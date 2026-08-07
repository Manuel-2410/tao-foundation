import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tao/models/app_section.dart';
import 'package:tao/providers/navigation_provider.dart';
import 'package:tao/widgets/tratamiento_card.dart';
import 'package:tao/widgets/tratamiento_detail_card.dart';
import 'package:tao/widgets/content_area.dart';

void main() {
  testWidgets('switching clinics resets selection and search', (tester) async {
    final navigation = NavigationProvider();
    navigation.changeSection(AppSection.clinicaZonaRio);

    await tester.pumpWidget(
      ChangeNotifierProvider<NavigationProvider>.value(
        value: navigation,
        child: const MaterialApp(home: Scaffold(body: ContentArea())),
      ),
    );

    expect(find.text('ZONA RIO'), findsOneWidget);

    final search = find.widgetWithText(TextField, 'Buscar tratamiento');
    await tester.enterText(search, 'Acupuntura');
    await tester.pump();

    await tester.tap(find.byType(TratamientoCard).first);
    await tester.pumpAndSettle();

    expect(find.byType(TratamientoDetailCard), findsOneWidget);

    navigation.changeSection(AppSection.clinicaCincoDiez);
    await tester.pumpAndSettle();

    expect(find.text('5 y 10'), findsOneWidget);
    expect(find.byType(TratamientoDetailCard), findsNothing);

    final newSearch = tester.widget<EditableText>(find.byType(EditableText));
    expect(newSearch.controller.text, isEmpty);
  });
}
