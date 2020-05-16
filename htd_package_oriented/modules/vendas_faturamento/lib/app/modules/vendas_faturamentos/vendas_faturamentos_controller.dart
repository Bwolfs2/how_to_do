import 'package:mobx/mobx.dart';

part 'vendas_faturamentos_controller.g.dart';

class VendasFaturamentosController = _VendasFaturamentosControllerBase
    with _$VendasFaturamentosController;

abstract class _VendasFaturamentosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
