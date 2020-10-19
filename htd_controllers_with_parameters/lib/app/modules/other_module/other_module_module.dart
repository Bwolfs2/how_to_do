import 'other_module_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'other_module_page.dart';

class OtherModuleModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OtherModuleController(
            parameterParams: i.args.params['MyParameter'],
            parameterData: i.args.data)),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:MyParameter', child: (_, args) => OtherModulePage()),
      ];

  static Inject get to => Inject<OtherModuleModule>.of();
}
