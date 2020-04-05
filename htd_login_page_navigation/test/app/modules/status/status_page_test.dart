import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_login_page_navigation/app/modules/status/status_page.dart';

main() {
  testWidgets('StatusPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(StatusPage(title: 'Status')));
    final titleFinder = find.text('Status');
    expect(titleFinder, findsOneWidget);
  });
}
