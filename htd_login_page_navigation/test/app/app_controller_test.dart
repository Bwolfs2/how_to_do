import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:how_to_do_bottom_navigation_bar/app/app_controller.dart';
import 'package:how_to_do_bottom_navigation_bar/app/app_module.dart';

void main() {
  initModule(AppModule());
  AppController app;

  setUp(() {
    app = AppModule.to.get<AppController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(app, isInstanceOf<AppController>());
    });

    test("Set Value", () {
      expect(app.value, equals(0));
      app.increment();
      expect(app.value, equals(1));
    });
  });
}
