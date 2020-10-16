import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modular_get_own_module/app/app_widget.dart';
import 'package:modular_get_own_module/app/modules/home/home_module.dart';

import 'modules/first/first_module.dart';
import 'modules/second/second_module.dart';
import 'modules/shared/some_interface.dart';
import 'modules/shared/third_some.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        // Bind<ISome>(
        //   (i) => SomeThird(),
        // )
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/second', module: SecondModule()),
        ModularRouter('/first', module: FirstModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
