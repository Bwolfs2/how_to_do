import 'package:hwt_consume_future_api/app/modules/home/models/pokemon_model.dart';
import 'package:hwt_consume_future_api/app/modules/home/repositories/home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final HomeRepository repository;
  _HomeBase(this.repository) {
    fillData();
  }

  @observable
  bool isLoading = false;

  @observable
  List<PokemonModel> pokemons = [];

  @action
  Future<void> fillData() async {
    isLoading = true;
    List<PokemonModel> pkms = [];
    for (var i = 1; i < 152; i++) {
      pkms.add(await repository.getData(i));
    }

    pokemons = pkms;
    isLoading = false;
  }
}
