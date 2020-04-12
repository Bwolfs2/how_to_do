import 'package:mobx/mobx.dart';

part 'new_controller.g.dart';

class NewController = _NewControllerBase with _$NewController;

abstract class _NewControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
