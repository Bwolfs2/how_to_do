import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:how_to_do_bottom_navigation_bar/app/modules/login/login_controller.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  LoginController login;

  setUp(() {
    login = LoginModule.to.get<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

  //  test("Set Value", () {
  //    expect(login.value, equals(0));
  //    login.increment();
  //    expect(login.value, equals(1));
  //  });
  });
}
