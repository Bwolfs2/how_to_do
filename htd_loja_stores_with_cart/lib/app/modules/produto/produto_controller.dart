import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

import 'models/produto_model.dart';
import 'repositories/produto_repository.dart';

part 'produto_controller.g.dart';

class ProdutoController = _ProdutoControllerBase with _$ProdutoController;

abstract class _ProdutoControllerBase with Store {
  final AuthStore _authStore;

  final ProdutoRepository repository;
  _ProdutoControllerBase(this.repository, String idLoja, this._authStore) {
    init(int.parse(idLoja));
  }

  @computed
  bool get isLogged => _authStore.isLogged;

  @observable
  ObservableList<ProdutoModel> produtos;

  @action
  Future init(int idLoja) async {
    produtos = (await repository.obterProdutos(idLoja)).asObservable();
  }
}
