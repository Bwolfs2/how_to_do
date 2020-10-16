import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:modular_get_own_module/app/modules/first/first_controller.dart';
import 'package:modular_get_own_module/app/modules/first/first_module.dart';

void main() {
  initModule(FirstModule());
  // FirstController first;
  //
  setUp(() {
    //     first = FirstModule.to.get<FirstController>();
  });

  group('FirstController Test', () {
    //   test("First Test", () {
    //     expect(first, isInstanceOf<FirstController>());
    //   });

    //   test("Set Value", () {
    //     expect(first.value, equals(0));
    //     first.increment();
    //     expect(first.value, equals(1));
    //   });
  });
}
