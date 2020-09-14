import 'package:htd_modular_guards/app/shared/store/auth_store.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:htd_modular_guards/app/app_widget.dart';
import 'package:htd_modular_guards/app/modules/home/home_module.dart';

import 'modules/admin/admin_module.dart';
import 'modules/auth/auth_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => AuthStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          module: SplashModule(),
        ),
        ModularRouter(
          '/home',
          module: HomeModule(),
          guards: [
            AuthGuard(),
          ],
        ),
        ModularRouter(
          '/login',
          module: AuthModule(),
        ),
        ModularRouter('/admin', module: AdminModule(), guards: [
          //   AuthGuard(),
          AdminGuard(),
        ])
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

class AdminGuard extends RouteGuard {
  AuthStore _authStore = Modular.get();

  @override
  bool canActivate(String url) => _authStore.isAdmin;

  @override
  List<GuardExecutor> get executors => [SendToLoginGuardExecutor()];
}

class AuthGuard extends RouteGuard {
  AuthStore _authStore = Modular.get();

  @override
  bool canActivate(String url) => _authStore.isLogged;

  @override
  List<GuardExecutor> get executors => [SendToLoginGuardExecutor()];
}

class SendToLoginGuardExecutor extends GuardExecutor {
  @override
  void onGuarded(String path, {bool isActive}) {
    if (!isActive) {
      Modular.to.pushReplacementNamed('/login');
    }
  }
}
