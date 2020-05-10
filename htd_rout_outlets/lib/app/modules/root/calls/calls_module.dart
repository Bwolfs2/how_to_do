import 'package:htd_rout_outlets/app/modules/root/calls/calls_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_rout_outlets/app/modules/root/calls/calls_page.dart';

class CallsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CallsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CallsPage()),
      ];

  static Inject get to => Inject<CallsModule>.of();
}
