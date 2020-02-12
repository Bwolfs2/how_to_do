import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_drawer_navigation/app/modules/root/drawer/drawer_widget.dart';

main() {
  testWidgets('DrawerWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DrawerWidget()));
    final textFinder = find.text('Drawer');
    expect(textFinder, findsOneWidget);
  });
}
