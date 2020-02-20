import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  @observable
  String nome;

  @observable
  String nomeErro;

  @action
  void setNome(String value) {
    nome = value;
    validaNome();
  }

  @observable
  String sobrenome;
  
  @observable
  String sobrenomeErro;

  @action
  void setSobrenome(String value) {
    sobrenome = value;
    validaSobreNome();
  }

  @action
  void validaNome() {
    if (nome == null || nome.length == 0) {
      nomeErro = "Nome Inválido";
    }
  }

  @action
  void validaSobreNome() {
    if (sobrenome == null || sobrenome.length == 0) {
      sobrenomeErro = "Sobrenome Inválido";
    }
  }
}
