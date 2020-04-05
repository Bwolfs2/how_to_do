import 'package:htd_login_page_navigation/app/shared/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  final AuthStore authStore;

  _SplashBase(this.authStore);

  @action
  Future<bool> isLogged() async {
    var result = verificaLogin();

    authStore.setLogged(result);
    return result;
  }

  bool verificaLogin() {
    return 1 != 1;
  }
}
