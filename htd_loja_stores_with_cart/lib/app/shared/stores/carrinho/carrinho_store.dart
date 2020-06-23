import 'package:htd_loja_store/app/modules/produto/models/produto_model.dart';
import 'package:htd_loja_store/app/shared/models/produto_carrinho/produto_carrinho.dart';
import 'package:mobx/mobx.dart';
part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStoreBase with _$CarrinhoStore;

abstract class _CarrinhoStoreBase with Store {
  final produtos = ObservableList<ProdutoCarrinho>();

  void adicionarProdutoNoCarrinho(ProdutoModel produto) {
    var index =
        produtos.indexWhere((element) => element.produto.id == produto.id);
    if (index > 0) {
      produtos.elementAt(index).adicionar();
    } else {
      produtos.add(ProdutoCarrinho(produto, 1));
    }
  }

  void removerProdutoNoCarrinho(ProdutoModel produto) {
    var index =
        produtos.indexWhere((element) => element.produto.id == produto.id);
    if (index > 0) {
      produtos.removeAt(index);
    }
  }
}
