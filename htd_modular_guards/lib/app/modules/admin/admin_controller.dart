import 'package:mobx/mobx.dart';

part 'admin_controller.g.dart';

class AdminController = _AdminControllerBase with _$AdminController;

abstract class _AdminControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
