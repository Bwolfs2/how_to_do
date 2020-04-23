import 'package:htd_reactive_list/app/modules/home/models/produto_store.dart';
import 'package:mobx/mobx.dart';

class CategoriaModel {
  ObservableList<ProdutoStore> listaProdutos = ObservableList<ProdutoStore>();
}
