import 'package:htd_reactive_list/app/modules/home/models/produto_store.dart';
import 'package:mobx/mobx.dart';

import 'models/categoria_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  _HomeBase() {
    produtos = List.generate(
            10, (index) => ProdutoStore(id: index, nome: "Produto $index"))
        .asObservable();
  }

  @observable
  ObservableList<ProdutoStore> produtos;

  CategoriaModel categoria = CategoriaModel();

  @action
  void addItem() {
    var indx = produtos.length;
    produtos.add(ProdutoStore(id: indx + 1, nome: "Produto ${indx + 1}"));
    categoria.listaProdutos
        .add(ProdutoStore(id: indx + 1, nome: "Produto ${indx + 1}"));
  }

  @action
  void changeName(int id) {
    produtos[id].nome = "Novo Nome $id";
  }
}
