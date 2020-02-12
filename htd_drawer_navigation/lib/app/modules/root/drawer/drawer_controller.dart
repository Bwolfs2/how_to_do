import 'package:mobx/mobx.dart';

part 'drawer_controller.g.dart';

class DrawerController = _DrawerBase with _$DrawerController;

abstract class _DrawerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
