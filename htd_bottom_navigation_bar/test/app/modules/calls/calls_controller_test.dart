import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:how_to_do_bottom_navigation_bar/app/modules/calls/calls_controller.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/calls/calls_module.dart';

void main() {
  initModule(CallsModule());
  CallsController calls;

  setUp(() {
    calls = CallsModule.to.get<CallsController>();
  });

  group('CallsController Test', () {
    test("First Test", () {
      expect(calls, isInstanceOf<CallsController>());
    });

    test("Set Value", () {
      expect(calls.value, equals(0));
      calls.increment();
      expect(calls.value, equals(1));
    });
  });
}
