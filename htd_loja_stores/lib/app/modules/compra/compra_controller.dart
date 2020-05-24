import 'package:mobx/mobx.dart';

part 'compra_controller.g.dart';

class CompraController = _CompraControllerBase with _$CompraController;

abstract class _CompraControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
