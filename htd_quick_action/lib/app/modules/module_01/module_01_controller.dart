import 'package:mobx/mobx.dart';

part 'module_01_controller.g.dart';

class Module01Controller = _Module01ControllerBase with _$Module01Controller;

abstract class _Module01ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
