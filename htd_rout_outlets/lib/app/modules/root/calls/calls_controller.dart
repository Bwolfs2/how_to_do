import 'package:mobx/mobx.dart';

part 'calls_controller.g.dart';

class CallsController = _CallsControllerBase with _$CallsController;

abstract class _CallsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
