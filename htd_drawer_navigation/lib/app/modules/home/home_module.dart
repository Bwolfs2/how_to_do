import 'package:flutter/material.dart';
import 'package:htd_drawer_navigation/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}
