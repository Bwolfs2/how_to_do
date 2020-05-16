import 'package:mobx/mobx.dart';

part 'gestao_projetos_controller.g.dart';

class GestaoProjetosController = _GestaoProjetosControllerBase
    with _$GestaoProjetosController;

abstract class _GestaoProjetosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
