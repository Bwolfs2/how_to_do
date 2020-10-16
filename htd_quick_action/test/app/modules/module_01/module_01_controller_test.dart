import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:htd_quick_action/app/modules/module_01/module_01_controller.dart';
import 'package:htd_quick_action/app/modules/module_01/module_01_module.dart';

void main() {
  initModule(Module01Module());
  // Module01Controller module01;
  //
  setUp(() {
    //     module01 = Module01Module.to.get<Module01Controller>();
  });

  group('Module01Controller Test', () {
    //   test("First Test", () {
    //     expect(module01, isInstanceOf<Module01Controller>());
    //   });

    //   test("Set Value", () {
    //     expect(module01.value, equals(0));
    //     module01.increment();
    //     expect(module01.value, equals(1));
    //   });
  });
}
