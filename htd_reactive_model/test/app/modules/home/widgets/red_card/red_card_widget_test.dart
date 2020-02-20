import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_reactive_model/app/modules/home/widgets/red_card/red_card_widget.dart';

main() {
  testWidgets('RedCardWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RedCardWidget()));
    final textFinder = find.text('RedCard');
    expect(textFinder, findsOneWidget);
  });
}
