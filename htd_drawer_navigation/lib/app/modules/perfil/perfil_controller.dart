import 'package:mobx/mobx.dart';

part 'perfil_controller.g.dart';

class PerfilController = _PerfilBase with _$PerfilController;

abstract class _PerfilBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
