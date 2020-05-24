import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';

import 'produto_controller.dart';
import 'produto_page.dart';
import 'repositories/produto_repository.dart';

class ProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProdutoRepository(Dio())),
        Bind(
            (i) => ProdutoController(
                  i.get<ProdutoRepository>(),
                  i.args.params["idLoja"],
                  i.get<AuthStore>(),
                ),
            singleton: false),
      ];

  @override
  List<Router> get routers => [
        Router("/:nomeLoja/:logo/:idLoja",
            child: (_, args) => ProdutoPage(
                  nomeDaLoja: args.params["nomeLoja"],
                  id: args.params["idLoja"],
                  logo: args.params["logo"],
                ),
            transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<ProdutoModule>.of();
}
