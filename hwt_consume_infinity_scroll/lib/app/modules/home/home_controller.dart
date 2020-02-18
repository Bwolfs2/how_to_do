import 'package:mobx/mobx.dart';

import 'models/pokemon_model.dart';
import 'repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final HomeRepository repository;
  _HomeBase(this.repository) {
    getMore(next:20);
  }
  int _lastIndex = 1;
  @observable
  bool isLoading = false;

  @observable
  ObservableList<PokemonModel> pokemons = ObservableList<PokemonModel>();

  @action
  Future<void> getMore({int next = 10}) async {
    isLoading = true;

    List<PokemonModel> pkms = [];
    var index = _lastIndex;
    _lastIndex = _lastIndex + next;

    for (var i = index; i < _lastIndex; i++) {
      pkms.add(await repository.getData(i));
    }
    pokemons.addAll(pkms.asObservable());
    isLoading = false;
  }
}
