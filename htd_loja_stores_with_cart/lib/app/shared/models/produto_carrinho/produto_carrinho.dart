import 'package:htd_loja_store/app/modules/produto/models/produto_model.dart';

import 'package:mobx/mobx.dart';
part 'produto_carrinho.g.dart';

class ProdutoCarrinho = _ProdutoCarrinhoBase with _$ProdutoCarrinho;

abstract class _ProdutoCarrinhoBase with Store {
  @observable
  ProdutoModel produto;
  @observable
  int quantidade;

  @action
  void adicionar() => quantidade++;
  @action
  void remover() => quantidade--;

  _ProdutoCarrinhoBase(this.produto, this.quantidade)
      : assert(produto != null, "Produto informado não pode ser null");
}
