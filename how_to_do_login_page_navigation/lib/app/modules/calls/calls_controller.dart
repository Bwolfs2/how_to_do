import 'package:mobx/mobx.dart';

part 'calls_controller.g.dart';

class CallsController = _CallsBase with _$CallsController;

abstract class _CallsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
