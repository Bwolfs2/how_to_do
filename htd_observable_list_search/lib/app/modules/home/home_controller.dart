import 'package:htd_observable_list_search/app/helper/observable_list_search/observable_list_search.dart';
import 'package:mobx/mobx.dart';

import 'models/pkm_model.dart';
import 'repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository repository;
  _HomeControllerBase(this.repository) {
    pokemons = ObservableListSearch(
      autoSearch: true,
      initialValue: <PkmModel>[],
      refresh: (parameter) async {
        if (parameter is MeuTipo) {
          return await repository.getListData();
        }
        return await repository.getListData();
      },
    )..refresh();
  }

  @action
  Future changeParameter(id, raio, pageSize) async {
    return pokemons.updateFilter(MeuTipo(id, raio, pageSize));
  }

  @observable
  ObservableListSearch<PkmModel> pokemons;
}

class MeuTipo {
  final String id;
  final String raio;
  final int pageSize;

  MeuTipo(this.id, this.raio, this.pageSize);
}
