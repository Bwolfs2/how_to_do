import 'package:mobx/mobx.dart';

part 'exemplo_controller.g.dart';

class ExemploController = _ExemploControllerBase with _$ExemploController;

abstract class _ExemploControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
