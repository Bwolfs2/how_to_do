import 'package:mobx/mobx.dart';

part 'page3_controller.g.dart';

class Page3Controller = _Page3ControllerBase with _$Page3Controller;

abstract class _Page3ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
