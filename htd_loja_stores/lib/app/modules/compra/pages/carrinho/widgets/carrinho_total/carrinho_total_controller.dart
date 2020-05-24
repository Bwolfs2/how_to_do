import 'package:mobx/mobx.dart';

part 'carrinho_total_controller.g.dart';

class CarrinhoTotalController = _CarrinhoTotalControllerBase
    with _$CarrinhoTotalController;

abstract class _CarrinhoTotalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
