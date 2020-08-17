import 'package:mobx/mobx.dart';

part 'steps_controller.g.dart';

class StepsController = _StepsControllerBase with _$StepsController;

abstract class _StepsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
