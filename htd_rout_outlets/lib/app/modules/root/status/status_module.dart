import 'package:htd_rout_outlets/app/modules/root/status/status_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_rout_outlets/app/modules/root/status/status_page.dart';

class StatusModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StatusController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StatusPage()),
      ];

  static Inject get to => Inject<StatusModule>.of();
}
