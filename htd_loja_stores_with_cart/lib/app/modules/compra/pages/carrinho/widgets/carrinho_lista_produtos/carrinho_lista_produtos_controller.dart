import 'package:htd_loja_store/app/modules/produto/models/produto_model.dart';
import 'package:htd_loja_store/app/shared/models/produto_carrinho/produto_carrinho.dart';
import 'package:htd_loja_store/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_lista_produtos_controller.g.dart';

class CarrinhoListaProdutosController = _CarrinhoListaProdutosControllerBase
    with _$CarrinhoListaProdutosController;

abstract class _CarrinhoListaProdutosControllerBase with Store {
  final CarrinhoStore _carrinhoStore;

  _CarrinhoListaProdutosControllerBase(this._carrinhoStore);

  ObservableList<ProdutoCarrinho> get produtos => _carrinhoStore.produtos;

  void removerProduto(ProdutoModel produto) {
    _carrinhoStore.removerProdutoNoCarrinho(produto);
  }
}
