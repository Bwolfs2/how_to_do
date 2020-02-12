import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
