import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  @action
  Future<bool> verifyLogin() async {
    return true;
  }
}
