import 'package:flutter/material.dart';
import 'package:htd_drawer_navigation/app/modules/items/items_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/items/items_page.dart';

class ItemsModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => ItemsController()),
      ];

  static Inject get to => Inject<ItemsModule>.of();

  @override
  Widget get view => ItemsPage();
}
