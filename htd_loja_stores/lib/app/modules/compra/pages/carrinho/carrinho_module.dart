import 'package:htd_loja_store/app/modules/compra/pages/carrinho/widgets/carrinho_lista_produtos/carrinho_lista_produtos_controller.dart';
import 'package:htd_loja_store/app/modules/compra/pages/carrinho/widgets/carrinho_total/carrinho_total_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_controller.dart';
import 'carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoListaProdutosController()),
        Bind((i) => CarrinhoTotalController()),
        Bind((i) => CarrinhoController()),
      ];

  @override
  List<Router> get routers => [
        Router("/:title",
            child: (_, args) => CarrinhoPage(title: args.params["title"])),
      ];

  static Inject get to => Inject<CarrinhoModule>.of();
}
