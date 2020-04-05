import 'package:htd_login_page_navigation/app/modules/splash/splash_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_login_page_navigation/app/modules/splash/splash_page.dart';
import 'package:htd_login_page_navigation/app/shared/auth_store.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController(i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
