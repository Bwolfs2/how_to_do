import 'package:mobx/mobx.dart';

import '../user_store.dart';

part 'step01_controller.g.dart';

class Step01Controller = _Step01ControllerBase with _$Step01Controller;

abstract class _Step01ControllerBase with Store {
  final UserStore _userStore;
  _Step01ControllerBase(this._userStore);

  @computed
  String get name => _userStore.name;

  @computed
  String get nomeCompleto =>
      "${_userStore.name ?? ''} - ${_userStore.sobreNome ?? ''}";

  void changeName(String name) {
    _userStore.setName(name);
  }

  @computed
  String get superName => _userStore.sobreNome;

  void changeSuperName(String name) {
    _userStore.setSobreNome(name);
  }
}
