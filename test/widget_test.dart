import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:tao/models/app_section.dart';
import 'package:tao/providers/navigation_provider.dart';
import 'package:tao/screens/home/dashboard_content.dart';

void main() {
  testWidgets('inicio muestra el módulo del manual de usuario', (tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ],
        child: const MaterialApp(home: Scaffold(body: DashboardContent())),
      ),
    );

    expect(find.text('Manual de usuario'), findsOneWidget);
    expect(find.text('Ver manual'), findsOneWidget);
    expect(
      find.text('Documento oficial · 16 páginas · Solo lectura'),
      findsOneWidget,
    );
    expect(find.byIcon(Icons.upload_file), findsNothing);
  });

  test('la navegación incluye la sección del manual', () {
    final navigation = NavigationProvider();

    navigation.changeSection(AppSection.manualUsuario);

    expect(navigation.current, AppSection.manualUsuario);
  });
}
