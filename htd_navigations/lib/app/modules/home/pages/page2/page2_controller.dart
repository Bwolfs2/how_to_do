import 'package:mobx/mobx.dart';

part 'page2_controller.g.dart';

class Page2Controller = _Page2ControllerBase with _$Page2Controller;

abstract class _Page2ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
