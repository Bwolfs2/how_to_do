import 'package:mobx/mobx.dart';

part 'gestao_compras_controller.g.dart';

class GestaoComprasController = _GestaoComprasControllerBase
    with _$GestaoComprasController;

abstract class _GestaoComprasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
