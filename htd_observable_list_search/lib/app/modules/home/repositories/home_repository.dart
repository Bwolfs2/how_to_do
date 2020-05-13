import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:htd_observable_list_search/app/modules/home/models/pkm_model.dart';
import 'package:htd_observable_list_search/app/modules/home/models/pokemon_model.dart';

class HomeRepository extends Disposable {
  final Dio dio;

  HomeRepository(this.dio);
  Future<PokemonModel> getData(int id) async {
    final response = await dio.get("https://pokeapi.co/api/v2/pokemon/$id");
    return PokemonModel.fromMap(response.data);
  }

  Future<List<PkmModel>> getListData() async {
    final response = await dio.get("https://pokeapi.co/api/v2/pokemon");
    var a = response.data["results"]
        .map((data) => PkmModel.fromMap(data))
        .toList()
        .cast<PkmModel>();

    return a;
  }

  @override
  void dispose() {}
}
