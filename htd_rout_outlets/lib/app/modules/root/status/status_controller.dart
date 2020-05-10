import 'package:mobx/mobx.dart';

part 'status_controller.g.dart';

class StatusController = _StatusControllerBase with _$StatusController;

abstract class _StatusControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
