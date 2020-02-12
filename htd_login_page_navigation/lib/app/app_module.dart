import 'package:how_to_do_bottom_navigation_bar/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:how_to_do_bottom_navigation_bar/app/app_widget.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SplashModule()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
