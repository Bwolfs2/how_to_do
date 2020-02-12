import 'package:htd_drawer_navigation/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:htd_drawer_navigation/app/app_widget.dart';

import 'modules/perfil/perfil_module.dart';
import 'modules/root/root_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: RootModule()),
        Router('/perfil', module: PerfilModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
