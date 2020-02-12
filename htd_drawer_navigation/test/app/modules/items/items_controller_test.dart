import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:htd_drawer_navigation/app/modules/items/items_controller.dart';
import 'package:htd_drawer_navigation/app/modules/items/items_module.dart';

void main() {
  initModule(ItemsModule());
  ItemsController items;

  setUp(() {
    items = ItemsModule.to.get<ItemsController>();
  });

  group('ItemsController Test', () {
    test("First Test", () {
      expect(items, isInstanceOf<ItemsController>());
    });

    test("Set Value", () {
      expect(items.value, equals(0));
      items.increment();
      expect(items.value, equals(1));
    });
  });
}
