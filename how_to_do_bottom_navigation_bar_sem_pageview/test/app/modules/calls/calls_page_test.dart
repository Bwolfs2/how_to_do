import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/calls/calls_page.dart';

main() {
  testWidgets('CallsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CallsPage(title: 'Calls')));
    final titleFinder = find.text('Calls');
    expect(titleFinder, findsOneWidget);
  });
}
