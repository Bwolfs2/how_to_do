import 'package:mobx/mobx.dart';

part 'controle_patrimonial_controller.g.dart';

class ControlePatrimonialController = _ControlePatrimonialControllerBase
    with _$ControlePatrimonialController;

abstract class _ControlePatrimonialControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
