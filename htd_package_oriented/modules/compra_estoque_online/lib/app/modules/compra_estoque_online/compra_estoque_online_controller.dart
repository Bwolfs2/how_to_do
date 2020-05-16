import 'package:mobx/mobx.dart';

part 'compra_estoque_online_controller.g.dart';

class CompraEstoqueOnlineController = _CompraEstoqueOnlineControllerBase
    with _$CompraEstoqueOnlineController;

abstract class _CompraEstoqueOnlineControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
