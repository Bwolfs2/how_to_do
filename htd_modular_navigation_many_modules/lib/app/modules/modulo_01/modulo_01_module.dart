import 'package:htd_modular_navigation_many_modules/app/modules/modulo_01/modulo_01_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_modular_navigation_many_modules/app/modules/modulo_01/modulo_01_page.dart';

class Modulo01Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Modulo01Controller(), singleton: false),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (_, args) => Modulo01Page(
            title: args.data,
          ),
        ),
      ];

  static Inject get to => Inject<Modulo01Module>.of();
}
