import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';
import 'package:mobx/mobx.dart';

import 'models/loja_model.dart';
import 'repositories/loja_repository.dart';

part 'loja_controller.g.dart';

class LojaController = _LojaControllerBase with _$LojaController;

abstract class _LojaControllerBase with Store {
  final AuthStore _authStore;
  final LojaRepository repository;

  _LojaControllerBase(this.repository, this._authStore) {
    init();
  }

  @computed
  bool get isLogged => _authStore.isLogged;

  @observable
  ObservableList<LojaModel> lojas;

  @action
  Future init() async {
    lojas = (await repository.obterLojas()).asObservable();
  }
}
