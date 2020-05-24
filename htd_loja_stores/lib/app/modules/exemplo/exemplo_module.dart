import 'package:htd_loja_store/app/modules/exemplo/exemplo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/exemplo/exemplo_page.dart';

class ExemploModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ExemploController(), singleton: false),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ExemploPage()),
      ];

  static Inject get to => Inject<ExemploModule>.of();
}
