import 'package:mobx/mobx.dart';
part 'produto_store.g.dart';

class ProdutoStore = _ProdutoStoreBase with _$ProdutoStore;

abstract class _ProdutoStoreBase with Store {
  _ProdutoStoreBase({this.id, this.nome});

  @observable
  int id;

  @observable
  String nome;
}
