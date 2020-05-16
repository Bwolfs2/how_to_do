import 'package:flutter_modular/flutter_modular.dart';

import 'gestao_compras_controller.dart';
import 'gestao_compras_page.dart';

class GestaoComprasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GestaoComprasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => GestaoComprasPage()),
      ];

  static Inject get to => Inject<GestaoComprasModule>.of();
}
