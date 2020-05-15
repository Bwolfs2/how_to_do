import 'package:loja/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:loja/app/app_widget.dart';

import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LojaModule()),
        Router("/produto", module: ProdutoModule()),
        Router("/compra", module: CompraModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
