import 'package:flutter_modular/flutter_modular.dart';

import './../usuarios/pages/add_or_update/add_or_update_controller.dart';
import './../usuarios/repositories/usuarios_repository.dart';
import './../usuarios/usuarios_controller.dart';
import './../usuarios/usuarios_page.dart';
import 'pages/add_or_update/add_or_update_page.dart';

class UsuariosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AddOrUpdateController(
            i.get<UsuariosRepository>(),
          ),
        ),
        Bind(
          (i) => UsuariosController(
            i.get<UsuariosRepository>(),
          ),
        ),
        Bind(
          (i) => UsuariosRepository(
            i.get(),
          ),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => UsuariosPage()),
        Router(
          "/addOrUpdate/:title",
          child: (_, args) => AddOrUpdatePage(
            title: args.params["title"],
            usuarioModel: args.data,
          ),
        ),
      ];

  static Inject get to => Inject<UsuariosModule>.of();
}
