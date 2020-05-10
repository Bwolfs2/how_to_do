import 'package:mobx/mobx.dart';

part 'root_controller.g.dart';

class RootController = _RootControllerBase with _$RootController;

abstract class _RootControllerBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    selectedIndex = index;
  }
}
