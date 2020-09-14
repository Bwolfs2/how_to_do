import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_modular_guards/app/shared/store/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthStore store;

  _HomeControllerBase(this.store);

  @action
  Future logoff() async {
    store.changeLogged(false);
    store.changeLoggedAdmin(false);
    await Modular.to.pushReplacementNamed('/login');
  }
}
