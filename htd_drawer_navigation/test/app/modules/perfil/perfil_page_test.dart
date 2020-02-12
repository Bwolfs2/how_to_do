import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_drawer_navigation/app/modules/perfil/perfil_page.dart';

main() {
  testWidgets('PerfilPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PerfilPage(title: 'Perfil')));
    final titleFinder = find.text('Perfil');
    expect(titleFinder, findsOneWidget);
  });
}
