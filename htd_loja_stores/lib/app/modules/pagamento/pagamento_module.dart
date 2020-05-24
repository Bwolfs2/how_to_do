import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';

import 'pagamento_controller.dart';
import 'pagamento_page.dart';
import 'pages/dados_endereco/dados_endereco_controller.dart';
import 'pages/dados_endereco/dados_endereco_page.dart';
import 'pages/dados_pagamento/dados_pagamento_controller.dart';
import 'pages/dados_pagamento/dados_pagamento_page.dart';
import 'pages/pagamento_sucesso/pagamento_sucesso_controller.dart';
import 'pages/pagamento_sucesso/pagamento_sucesso_page.dart';
import 'stores/pagamento_store.dart';

class PagamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PagamentoSucessoController(i.get<PagamentoStore>())),
        Bind((i) => DadosPagamentoController(i.get<PagamentoStore>())),
        Bind((i) => DadosEnderecoController(i.get<PagamentoStore>())),
        Bind((i) => PagamentoController()),

        //stores
        Bind((i) => PagamentoStore(i.get<AuthStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PagamentoPage()),
        Router("/endereco",
            child: (_, args) => DadosEnderecoPage(),
            transition: TransitionType.rightToLeft),
        Router("/dadosPagamento",
            child: (_, args) => DadosPagamentoPage(),
            transition: TransitionType.rightToLeft),
        Router("/sucesso", child: (_, args) => PagamentoSucessoPage()),
      ];

  static Inject get to => Inject<PagamentoModule>.of();
}
