import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';

import 'loja_controller.dart';
import 'loja_page.dart';
import 'repositories/loja_repository.dart';

class LojaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LojaRepository(Dio())),
        Bind(
            (i) => LojaController(i.get<LojaRepository>(), i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => LojaPage(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<LojaModule>.of();
}
