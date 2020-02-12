import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_controller.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_module.dart';

void main() {
  initModule(SplashModule());
  SplashController splash;

  setUp(() {
    splash = SplashModule.to.get<SplashController>();
  });

  group('SplashController Test', () {
    test("First Test", () {
      expect(splash, isInstanceOf<SplashController>());
    });

  //  test("Set Value", () {
  //    expect(splash.value, equals(0));
  //    splash.increment();
  //    expect(splash.value, equals(1));
  //  });
  });
}
