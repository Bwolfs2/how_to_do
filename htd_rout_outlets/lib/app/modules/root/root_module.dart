import 'package:htd_rout_outlets/app/modules/root/root_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_rout_outlets/app/modules/root/root_page.dart';

class RootModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RootController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RootPage()),
      ];

  static Inject get to => Inject<RootModule>.of();
}
