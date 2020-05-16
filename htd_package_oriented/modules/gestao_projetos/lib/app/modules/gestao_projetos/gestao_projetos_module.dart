import 'package:flutter_modular/flutter_modular.dart';

import 'gestao_projetos_controller.dart';
import 'gestao_projetos_page.dart';

class GestaoProjetosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GestaoProjetosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => GestaoProjetosPage()),
      ];

  static Inject get to => Inject<GestaoProjetosModule>.of();
}
