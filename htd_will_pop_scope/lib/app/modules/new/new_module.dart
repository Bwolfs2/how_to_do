import 'package:htd_will_pop_scope/app/modules/new/new_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_will_pop_scope/app/modules/new/new_page.dart';

class NewModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NewController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NewPage()),
      ];

  static Inject get to => Inject<NewModule>.of();
}
