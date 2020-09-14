import 'package:htd_modular_guards/app/shared/store/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final AuthStore store;

  _AuthControllerBase(this.store);

  @action
  void loggin() => store.changeLogged(true);

  @action
  void logginAdmin() => store.changeLoggedAdmin(true);
}
