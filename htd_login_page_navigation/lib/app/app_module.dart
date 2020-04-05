import 'package:htd_login_page_navigation/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:htd_login_page_navigation/app/app_widget.dart';
import 'package:htd_login_page_navigation/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';
import 'shared/auth_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => AuthStore()),
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
