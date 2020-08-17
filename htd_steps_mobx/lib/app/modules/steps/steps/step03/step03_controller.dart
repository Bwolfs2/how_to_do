import 'package:mobx/mobx.dart';

import '../user_store.dart';

part 'step03_controller.g.dart';

class Step03Controller = _Step03ControllerBase with _$Step03Controller;

abstract class _Step03ControllerBase with Store {
  final UserStore _userStore;

  _Step03ControllerBase(this._userStore);

  @computed
  String get name => _userStore.name;
  @computed
  String get sobreNome => _userStore.sobreNome;
  @computed
  String get endereco => _userStore.endereco;
}
