import 'package:htd_drawer_navigation/app/modules/perfil/perfil_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/perfil/perfil_page.dart';

class PerfilModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PerfilPage()),
      ];

  static Inject get to => Inject<PerfilModule>.of();
}
