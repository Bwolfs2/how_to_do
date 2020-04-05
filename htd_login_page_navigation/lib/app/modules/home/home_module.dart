import 'package:htd_login_page_navigation/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_login_page_navigation/app/modules/home/home_page.dart';
import 'package:htd_login_page_navigation/app/shared/auth_store.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
