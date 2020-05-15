import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:htd_modular_navigation_many_modules/app/modules/modulo_01/modulo_01_controller.dart';
import 'package:htd_modular_navigation_many_modules/app/modules/modulo_01/modulo_01_module.dart';

void main() {
  initModule(Modulo01Module());
  // Modulo01Controller modulo01;
  //
  setUp(() {
    //     modulo01 = Modulo01Module.to.get<Modulo01Controller>();
  });

  group('Modulo01Controller Test', () {
    //   test("First Test", () {
    //     expect(modulo01, isInstanceOf<Modulo01Controller>());
    //   });

    //   test("Set Value", () {
    //     expect(modulo01.value, equals(0));
    //     modulo01.increment();
    //     expect(modulo01.value, equals(1));
    //   });
  });
}
