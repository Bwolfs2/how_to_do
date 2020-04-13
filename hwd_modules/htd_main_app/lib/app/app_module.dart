import 'package:auth_module/app/modules/auth/auth_module.dart';
import 'package:product_module/app/modules/product/product_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_main_app/app/app_controller.dart';
import 'package:htd_main_app/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        //normaly here we have a rootPage but in this case i use just the same product_module
        Router(Modular.initialRoute, module: ProductModule()),
        Router("/product", module: ProductModule()),
        Router("/login", module: AuthModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
