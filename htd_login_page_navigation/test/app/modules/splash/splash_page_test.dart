import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_page.dart';

main() {
  testWidgets('SplashPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SplashPage(title: 'Splash')));
    final titleFinder = find.text('Splash');
    expect(titleFinder, findsOneWidget);
  });
}
