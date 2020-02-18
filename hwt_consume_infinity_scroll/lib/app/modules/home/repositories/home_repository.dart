import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:hwt_consume_infinity_scroll/app/modules/home/models/pokemon_model.dart';

class HomeRepository extends Disposable {
  final Dio dio;

  HomeRepository(this.dio);
  Future<PokemonModel> getData(int id) async {
    final response = await dio.get("https://pokeapi.co/api/v2/pokemon/$id");
    return PokemonModel.fromMap(response.data);
  }

  @override
  void dispose() {}
}
