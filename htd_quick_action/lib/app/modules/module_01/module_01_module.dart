import 'module_01_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'module_01_page.dart';

class Module01Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Module01Controller()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Module01Page()),
      ];

  static Inject get to => Inject<Module01Module>.of();
}
