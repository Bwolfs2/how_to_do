import 'package:htd_modular_navigation_many_modules/app/modules/module_g/module_g_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_modular_navigation_many_modules/app/modules/module_g/module_g_page.dart';

class ModuleGModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ModuleGController(), singleton: false),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ModuleGPage()),
      ];

  static Inject get to => Inject<ModuleGModule>.of();
}
