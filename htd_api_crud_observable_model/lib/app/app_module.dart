import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/usuarios/usuarios_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HasuraConnect(
            "https://flutterando-stop-game.herokuapp.com/v1/graphql")),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: UsuariosModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
