import 'package:mobx/mobx.dart';

part 'items_controller.g.dart';

class ItemsController = _ItemsBase with _$ItemsController;

abstract class _ItemsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
