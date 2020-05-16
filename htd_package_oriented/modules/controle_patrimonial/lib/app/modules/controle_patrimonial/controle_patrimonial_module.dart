import 'package:flutter_modular/flutter_modular.dart';

import 'controle_patrimonial_controller.dart';
import 'controle_patrimonial_page.dart';

class ControlePatrimonialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ControlePatrimonialController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => ControlePatrimonialPage()),
      ];

  static Inject get to => Inject<ControlePatrimonialModule>.of();
}
