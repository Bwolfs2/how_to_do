import 'package:flutter_modular/flutter_modular.dart';

import 'crm_controller.dart';
import 'crm_page.dart';

class CrmModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CrmController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CrmPage()),
      ];

  static Inject get to => Inject<CrmModule>.of();
}
