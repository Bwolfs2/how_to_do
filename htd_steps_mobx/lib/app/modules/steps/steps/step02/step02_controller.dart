import 'package:mobx/mobx.dart';

import '../user_store.dart';

part 'step02_controller.g.dart';

class Step02Controller = _Step02ControllerBase with _$Step02Controller;

abstract class _Step02ControllerBase with Store {
  final UserStore _userStore;

  _Step02ControllerBase(this._userStore);

  @computed
  String get address => _userStore.endereco;

  void setAddress(String endereco) {
    _userStore.setEndereco(endereco);
  }
}
