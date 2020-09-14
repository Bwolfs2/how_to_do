import 'package:flutter_modular/flutter_modular.dart';

import 'admin_controller.dart';
import 'admin_page.dart';

class AdminModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AdminController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AdminPage()),
      ];

  static Inject get to => Inject<AdminModule>.of();
}
