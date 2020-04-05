import 'package:htd_login_page_navigation/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_login_page_navigation/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
