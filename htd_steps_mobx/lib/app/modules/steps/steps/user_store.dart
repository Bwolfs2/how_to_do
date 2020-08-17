import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  @observable
  int id;

  @observable
  String name;

  @observable
  String sobreNome;

  @observable
  String endereco;

  @action
  void setName(String _name) => name = _name;

  @action
  void setSobreNome(String _sobreName) => sobreNome = _sobreName;

  @action
  void setEndereco(String _address) => endereco = _address;

  @action
  void setId(int _id) => id = _id;
}
