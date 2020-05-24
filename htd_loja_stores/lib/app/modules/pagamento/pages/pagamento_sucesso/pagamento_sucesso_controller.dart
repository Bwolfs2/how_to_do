import 'package:htd_loja_store/app/modules/pagamento/models/pagamento_model.dart';
import 'package:htd_loja_store/app/modules/pagamento/stores/pagamento_store.dart';
import 'package:mobx/mobx.dart';

part 'pagamento_sucesso_controller.g.dart';

class PagamentoSucessoController = _PagamentoSucessoControllerBase
    with _$PagamentoSucessoController;

abstract class _PagamentoSucessoControllerBase with Store {
  final PagamentoStore _pagamentoStore;

  _PagamentoSucessoControllerBase(this._pagamentoStore);

  @computed
  PagamentoModel get model => _pagamentoStore.pagamento;
}
