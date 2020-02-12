import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:htd_drawer_navigation/app/modules/root/drawer/drawer_controller.dart';
import 'package:htd_drawer_navigation/app/modules/root/root_module.dart';

void main() {
  initModule(RootModule());
  DrawerController drawer;

  setUp(() {
    drawer = RootModule.to.get<DrawerController>();
  });

  group('DrawerController Test', () {
    test("First Test", () {
      expect(drawer, isInstanceOf<DrawerController>());
    });

    test("Set Value", () {
      expect(drawer.value, equals(0));
      drawer.increment();
      expect(drawer.value, equals(1));
    });
  });
}
