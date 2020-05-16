import 'package:mobx/mobx.dart';

part 'controle_financeiro_controller.g.dart';

class ControleFinanceiroController = _ControleFinanceiroControllerBase
    with _$ControleFinanceiroController;

abstract class _ControleFinanceiroControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
