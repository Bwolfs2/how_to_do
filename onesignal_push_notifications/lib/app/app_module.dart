import 'package:onesignal_push_notifications/app/shared/notifications_store.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_push_notifications/app/app_widget.dart';
import 'package:onesignal_push_notifications/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        BindInject(
          (i) => NotificationsStore(),
          singleton: true,
          lazy: false,
        )
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
