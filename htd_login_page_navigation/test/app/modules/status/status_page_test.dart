import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:how_to_do_bottom_navigation_bar/app/modules/status/status_page.dart';

main() {
  testWidgets('StatusPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(StatusPage(title: 'Status')));
    final titleFinder = find.text('Status');
    expect(titleFinder, findsOneWidget);
  });
}
