import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  _HomeControllerBase() {
    title = Uuid().v4();
  }

  @observable
  String title;

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
