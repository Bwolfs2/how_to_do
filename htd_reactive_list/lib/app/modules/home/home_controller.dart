import 'package:htd_reactive_list/app/modules/home/models/produto_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  _HomeBase() {
    produtos = List.generate(
            100, (index) => ProdutoStore(id: index, nome: "Produto $index"))
        .asObservable();
  }

  @observable
  ObservableList<ProdutoStore> produtos;

  @action
  void changeName(int id) {
    produtos[id].nome = "Novo Nome $id";
  }
}
