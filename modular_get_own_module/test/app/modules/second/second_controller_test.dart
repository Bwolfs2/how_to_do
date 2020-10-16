import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:modular_get_own_module/app/modules/second/second_controller.dart';
import 'package:modular_get_own_module/app/modules/second/second_module.dart';

void main() {
  initModule(SecondModule());
  // SecondController second;
  //
  setUp(() {
    //     second = SecondModule.to.get<SecondController>();
  });

  group('SecondController Test', () {
    //   test("First Test", () {
    //     expect(second, isInstanceOf<SecondController>());
    //   });

    //   test("Set Value", () {
    //     expect(second.value, equals(0));
    //     second.increment();
    //     expect(second.value, equals(1));
    //   });
  });
}
