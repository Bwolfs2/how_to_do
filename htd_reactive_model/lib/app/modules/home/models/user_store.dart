import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  @observable
  String nome;
  @observable
  String sobrenome;

  @action
  void setNome(String value) => nome = value;

  @action
  void setSobrenome(String value) => sobrenome = value;

  @computed
  String get nomeErro =>
      (nome == null || nome.length == 0) ? "Nome Inválido" : null;
  //Or this:
  // @computed
  // String get nomeErro {
  //   if (nome == null || nome.length == 0) {
  //     return "Nome Inválido";
  //   }
  //   return null;
  // }

  @computed
  String get sobrenomeErro => (sobrenome == null || sobrenome.length == 0)
      ? "Sobrenome Inválido"
      : null;
}
