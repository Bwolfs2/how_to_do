import 'package:modular_get_own_module/app/modules/shared/some_interface.dart';
import 'package:modular_get_own_module/app/modules/shared/third_some.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        //TODO here is the problem
        Bind<ISome>(
          (i) => SomeThird(),
        )
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
