import 'package:htd_loja_store/app/modules/produto/models/produto_model.dart';
import 'package:htd_loja_store/app/shared/stores/carrinho/carrinho_store.dart';
import 'package:mobx/mobx.dart';

part 'compra_controller.g.dart';

class CompraController = _CompraControllerBase with _$CompraController;

abstract class _CompraControllerBase with Store {
  final CarrinhoStore _carrinhoStore;

  _CompraControllerBase(this._carrinhoStore);

  @action
  void adicionarNoCarrinho(ProdutoModel produto) {
    _carrinhoStore.adicionarProdutoNoCarrinho(produto);
  }
}
