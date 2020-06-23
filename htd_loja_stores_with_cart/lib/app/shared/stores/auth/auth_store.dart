import 'package:htd_loja_store/app/shared/models/usuario/usuario_model.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  UsuarioModel usuario;

  @action
  void setUsuario(UsuarioModel value) => usuario = value;

  @computed
  bool get isLogged => usuario?.email != null && usuario?.senha != null;
}
