import 'package:mobx/mobx.dart';

part 'drop_down_custom_controller.g.dart';

class DropDownCustomController = _DropDownCustomControllerBase
    with _$DropDownCustomController;

abstract class _DropDownCustomControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
