import 'package:mobx/mobx.dart';

part 'carrinho_lista_produtos_controller.g.dart';

class CarrinhoListaProdutosController = _CarrinhoListaProdutosControllerBase
    with _$CarrinhoListaProdutosController;

abstract class _CarrinhoListaProdutosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
