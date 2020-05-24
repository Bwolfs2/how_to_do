import 'package:flutter_modular/flutter_modular.dart';

import 'compra_controller.dart';
import 'compra_page.dart';
import 'pages/carrinho/carrinho_module.dart';

class CompraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CompraController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CompraPage(
                  produtoModel: args.data,
                )),
        Router("/carrinho",
            module: CarrinhoModule(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<CompraModule>.of();
}
