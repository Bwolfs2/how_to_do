import 'package:htd_loja_store/app/modules/pagamento/models/pagamento_model.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';
import 'package:mobx/mobx.dart';
part 'pagamento_store.g.dart';

class PagamentoStore = _PagamentoStoreBase with _$PagamentoStore;

abstract class _PagamentoStoreBase with Store {
  final AuthStore _authStore;
  _PagamentoStoreBase(this._authStore) {
    pagamento = PagamentoModel()..nome = _authStore.usuario.email;
  }

  @observable
  PagamentoModel pagamento;
}
