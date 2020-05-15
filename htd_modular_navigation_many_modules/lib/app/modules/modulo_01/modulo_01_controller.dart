import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'modulo_01_controller.g.dart';

class Modulo01Controller = _Modulo01ControllerBase with _$Modulo01Controller;

abstract class _Modulo01ControllerBase with Store {
  _Modulo01ControllerBase() {
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
