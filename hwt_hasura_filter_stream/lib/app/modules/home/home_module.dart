import 'package:dio/dio.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'repository/home_repository.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository(i())),
        Bind((i) => HomeController(i())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
