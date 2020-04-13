// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStoreBase, Store {
  Computed<String> _$nomeErroComputed;

  @override
  String get nomeErro =>
      (_$nomeErroComputed ??= Computed<String>(() => super.nomeErro)).value;
  Computed<String> _$sobrenomeErroComputed;

  @override
  String get sobrenomeErro =>
      (_$sobrenomeErroComputed ??= Computed<String>(() => super.sobrenomeErro))
          .value;

  final _$nomeAtom = Atom(name: '_UserStoreBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$sobrenomeAtom = Atom(name: '_UserStoreBase.sobrenome');

  @override
  String get sobrenome {
    _$sobrenomeAtom.context.enforceReadPolicy(_$sobrenomeAtom);
    _$sobrenomeAtom.reportObserved();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.context.conditionallyRunInAction(() {
      super.sobrenome = value;
      _$sobrenomeAtom.reportChanged();
    }, _$sobrenomeAtom, name: '${_$sobrenomeAtom.name}_set');
  }

  final _$_UserStoreBaseActionController =
      ActionController(name: '_UserStoreBase');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.setNome(value);
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSobrenome(String value) {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.setSobrenome(value);
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'nome: ${nome.toString()},sobrenome: ${sobrenome.toString()},nomeErro: ${nomeErro.toString()},sobrenomeErro: ${sobrenomeErro.toString()}';
    return '{$string}';
  }
}
