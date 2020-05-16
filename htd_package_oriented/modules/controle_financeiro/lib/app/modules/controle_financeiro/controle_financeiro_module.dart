import 'package:flutter_modular/flutter_modular.dart';

import 'controle_financeiro_controller.dart';
import 'controle_financeiro_page.dart';

class ControleFinanceiroModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ControleFinanceiroController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => ControleFinanceiroPage()),
      ];

  static Inject get to => Inject<ControleFinanceiroModule>.of();
}
