import 'package:htd_modular_navigation_many_modules/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:htd_modular_navigation_many_modules/app/app_widget.dart';

import 'modules/home/home_module.dart';
import 'modules/module_g/module_g_module.dart';
import 'modules/modulo_01/modulo_01_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/modulo01", module: Modulo01Module()),
        Router("/moduloG", module: ModuleGModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
