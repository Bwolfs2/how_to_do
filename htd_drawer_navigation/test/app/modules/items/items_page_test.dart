import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_drawer_navigation/app/modules/items/items_page.dart';

main() {
  testWidgets('ItemsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ItemsPage(title: 'Items')));
    final titleFinder = find.text('Items');
    expect(titleFinder, findsOneWidget);
  });
}
