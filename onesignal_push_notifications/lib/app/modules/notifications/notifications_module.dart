import 'notifications_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'notifications_page.dart';

class NotificationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $NotificationsController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => NotificationsPage()),
      ];

  static Inject get to => Inject<NotificationsModule>.of();
}
