import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @computed
  bool get isLogged => _logged;

  @observable
  bool _logged = false;

  @action
  void changeLogged(bool logged) => _logged = logged;

  @observable
  bool _loggedAdmin = false;

  @computed
  bool get isAdmin => _loggedAdmin;

  @action
  void changeLoggedAdmin(bool admin) {
    _loggedAdmin = admin;
    _logged = admin;
  }
}
