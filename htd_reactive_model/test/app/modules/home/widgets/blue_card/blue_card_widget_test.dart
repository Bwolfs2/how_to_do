import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:htd_reactive_model/app/modules/home/widgets/blue_card/blue_card_widget.dart';

main() {
  testWidgets('BlueCardWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BlueCardWidget()));
    final textFinder = find.text('BlueCard');
    expect(textFinder, findsOneWidget);
  });
}
