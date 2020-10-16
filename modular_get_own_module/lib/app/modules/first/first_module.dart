import 'package:modular_get_own_module/app/modules/shared/some_interface.dart';

import 'first_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'first_page.dart';
import 'implementation/first_some.dart';

class FirstModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $FirstController,
        Bind<ISome>(
          (i) => SomeFirst(),
        )
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => FirstPage()),
      ];

  static Inject get to => Inject<FirstModule>.of();
}
