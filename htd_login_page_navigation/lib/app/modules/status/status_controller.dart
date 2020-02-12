import 'package:mobx/mobx.dart';

part 'status_controller.g.dart';

class StatusController = _StatusBase with _$StatusController;

abstract class _StatusBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
