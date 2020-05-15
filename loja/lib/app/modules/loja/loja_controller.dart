import 'package:mobx/mobx.dart';

part 'loja_controller.g.dart';

class LojaController = _LojaControllerBase with _$LojaController;

abstract class _LojaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
