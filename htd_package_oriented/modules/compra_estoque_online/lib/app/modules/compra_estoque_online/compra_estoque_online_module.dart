import 'package:flutter_modular/flutter_modular.dart';

import 'compra_estoque_online_controller.dart';
import 'compra_estoque_online_page.dart';

class CompraEstoqueOnlineModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CompraEstoqueOnlineController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CompraEstoqueOnlinePage()),
      ];

  static Inject get to => Inject<CompraEstoqueOnlineModule>.of();
}
