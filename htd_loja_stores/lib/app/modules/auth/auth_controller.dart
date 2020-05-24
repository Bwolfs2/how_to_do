import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/shared/models/usuario/usuario_model.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase extends Disposable with Store {
  final AuthStore _authStore;
  _AuthControllerBase(this._authStore);

  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  @action
  void entrar() {
    if (emailController.text != null &&
        emailController.text != "" &&
        senhaController.text != null &&
        senhaController.text != "") {
      _authStore
          .setUsuario(UsuarioModel(emailController.text, senhaController.text));
      Modular.to.pushReplacementNamed("/");
    } else {
      Modular.to.showDialog(
        builder: (context) => AlertDialog(
          content: Text("Voce nao preencheu todos os dados!!!"),
          title: Text("Oppss..."),
        ),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
  }
}
