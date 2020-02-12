import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:htd_drawer_navigation/app/modules/root/root_controller.dart';
import 'package:htd_drawer_navigation/app/modules/root/root_module.dart';

void main() {
  initModule(RootModule());
  RootController root;

  setUp(() {
    root = RootModule.to.get<RootController>();
  });

  group('RootController Test', () {
    test("First Test", () {
      expect(root, isInstanceOf<RootController>());
    });

    //  test("Set Value", () {
    //    expect(root.value, equals(0));
    //    root.increment();
    //    expect(root.value, equals(1));
    //  });
  });
}
