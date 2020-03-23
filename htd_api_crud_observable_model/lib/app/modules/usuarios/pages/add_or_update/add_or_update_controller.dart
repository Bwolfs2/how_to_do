import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import './../../models/usuario_model.dart';
import './../../models/usuario_store_model.dart';
import './../../repositories/usuarios_repository.dart';

part 'add_or_update_controller.g.dart';

class AddOrUpdateController = _AddOrUpdateControllerBase
    with _$AddOrUpdateController;

abstract class _AddOrUpdateControllerBase with Store {
  final UsuarioStoreModel usuarioStore = UsuarioStoreModel();

  final UsuariosRepository _repository;

  _AddOrUpdateControllerBase(this._repository);

  var emailController = TextEditingController();
  var nomeController = TextEditingController();

  fillData(UsuarioModel usuarioModel) {
    if (usuarioModel != null) {
      usuarioStore.setId(usuarioModel.id);
      usuarioStore.setEmail(usuarioModel.email);
      usuarioStore.setNome(usuarioModel.nome);

      nomeController.text = usuarioModel.nome;
      emailController.text = usuarioModel.email;
    }
  }

  @observable
  bool isLoading = false;

  @action
  Future<bool> save() async {
    isLoading = true;
    var result = await _repository.addOrUpdateUsuario(usuarioStore);
    isLoading = false;
    return result;
  }
}
