import 'package:flutter_modular/flutter_modular.dart';

import 'steps/step01/step01_controller.dart';
import 'steps/step01/step01_page.dart';
import 'steps/step02/step02_controller.dart';
import 'steps/step02/step02_page.dart';
import 'steps/step03/step03_controller.dart';
import 'steps/step03/step03_page.dart';
import 'steps/user_store.dart';
import 'steps_controller.dart';
import 'steps_page.dart';

class StepsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StepsController()),
        Bind((i) => Step03Controller(i())),
        Bind((i) => Step02Controller(i())),
        Bind((i) => Step01Controller(i())),
        //myStore
        Bind((i) => UserStore())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StepsPage()),
        Router("/step1", child: (_, args) => Step01Page()),
        Router("/step2", child: (_, args) => Step02Page()),
        Router("/step3", child: (_, args) => Step03Page()),
      ];

  static Inject get to => Inject<StepsModule>.of();
}
