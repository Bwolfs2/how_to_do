import 'package:htd_multi_dropdowns/app/modules/home/widgets/drop_down_custom/drop_down_custom_controller.dart';
import 'package:htd_multi_dropdowns/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_multi_dropdowns/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DropDownCustomController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
