import 'package:htd_navigations/app/modules/home/pages/page1/page1_page.dart';
import 'package:htd_navigations/app/modules/home/pages/page3/page3_controller.dart';
import 'package:htd_navigations/app/modules/home/pages/page2/page2_controller.dart';
import 'package:htd_navigations/app/modules/home/pages/page1/page1_controller.dart';
import 'package:htd_navigations/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_navigations/app/modules/home/home_page.dart';

import 'pages/page2/page2_page.dart';
import 'pages/page3/page3_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Page3Controller()),
        Bind((i) => Page2Controller()),
        Bind((i) => Page1Controller()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/page1", child: (_, args) => Page1Page()),
        Router("/page2", child: (_, args) => Page2Page()),
        Router("/page3", child: (_, args) => Page3Page()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
