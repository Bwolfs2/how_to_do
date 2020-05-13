// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_HomeControllerBase.pokemons');

  @override
  ObservableListSearch<PkmModel> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableListSearch<PkmModel> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$changeParameterAsyncAction =
      AsyncAction('_HomeControllerBase.changeParameter');

  @override
  Future<dynamic> changeParameter(dynamic id, dynamic raio, dynamic pageSize) {
    return _$changeParameterAsyncAction
        .run(() => super.changeParameter(id, raio, pageSize));
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
