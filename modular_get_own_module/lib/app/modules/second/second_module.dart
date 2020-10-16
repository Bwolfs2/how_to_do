import 'package:modular_get_own_module/app/modules/shared/some_interface.dart';

import 'implementation/second_some.dart';
import 'second_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'second_page.dart';

class SecondModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SecondController,
        Bind<ISome>(
          (i) => SomeSecond(),
        )
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SecondPage()),
      ];

  static Inject get to => Inject<SecondModule>.of();
}
