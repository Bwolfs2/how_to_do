import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  var loginController = TextEditingController();
  var passwordController = TextEditingController();

  @action
  void login() {
    if (loginController.text == "admin" && passwordController.text == "admin") {
      Modular.to.pushReplacementNamed("/product");
    } else {
      Fluttertoast.showToast(
          msg: "Wrong login, try login:admin and pwd:admin",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
