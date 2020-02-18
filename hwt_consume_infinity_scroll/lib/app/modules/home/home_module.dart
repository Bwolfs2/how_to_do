import 'package:dio/dio.dart';
import 'package:hwt_consume_infinity_scroll/app/modules/home/repositories/home_repository.dart';
import 'package:hwt_consume_infinity_scroll/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hwt_consume_infinity_scroll/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository(i.get<Dio>())),
        Bind((i) => HomeController(i.get<HomeRepository>())),
        Bind((i) => Dio()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
