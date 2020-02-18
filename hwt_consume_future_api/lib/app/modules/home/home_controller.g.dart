// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$isLoadingAtom = Atom(name: '_HomeBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$pokemonsAtom = Atom(name: '_HomeBase.pokemons');

  @override
  List<PokemonModel> get pokemons {
    _$pokemonsAtom.context.enforceReadPolicy(_$pokemonsAtom);
    _$pokemonsAtom.reportObserved();
    return super.pokemons;
  }

  @override
  set pokemons(List<PokemonModel> value) {
    _$pokemonsAtom.context.conditionallyRunInAction(() {
      super.pokemons = value;
      _$pokemonsAtom.reportChanged();
    }, _$pokemonsAtom, name: '${_$pokemonsAtom.name}_set');
  }

  final _$fillDataAsyncAction = AsyncAction('fillData');

  @override
  Future<void> fillData() {
    return _$fillDataAsyncAction.run(() => super.fillData());
  }

  @override
  String toString() {
    final string =
        'isLoading: ${isLoading.toString()},pokemons: ${pokemons.toString()}';
    return '{$string}';
  }
}
