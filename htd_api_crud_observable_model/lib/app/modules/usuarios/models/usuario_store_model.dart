import 'package:mobx/mobx.dart';
part 'usuario_store_model.g.dart';

class UsuarioStoreModel = _UsuarioStoreModeBase with _$UsuarioStoreModel;

abstract class _UsuarioStoreModeBase with Store {
  int id;

  @observable
  String email;
  @observable
  String nome;

  @action
  void setId(int _id) => id = _id;

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setNome(String _nome) => nome = _nome;
}
