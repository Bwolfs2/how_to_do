import 'package:mobx/mobx.dart';

import './../usuarios/models/usuario_model.dart';
import './../usuarios/repositories/usuarios_repository.dart';

part 'usuarios_controller.g.dart';

class UsuariosController = _UsuariosControllerBase with _$UsuariosController;

abstract class _UsuariosControllerBase with Store {
  final UsuariosRepository repository;
  _UsuariosControllerBase(this.repository) {
    refresh();
  }

  @observable
  ObservableFuture<List<UsuarioModel>> usuarios;

  @action
  void refresh() {
    usuarios = repository.getUsuarios().asObservable();
  }
}
