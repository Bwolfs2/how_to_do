// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_store_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsuarioStoreModel on _UsuarioStoreModeBase, Store {
  final _$emailAtom = Atom(name: '_UsuarioStoreModeBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$nomeAtom = Atom(name: '_UsuarioStoreModeBase.nome');

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

  final _$_UsuarioStoreModeBaseActionController =
      ActionController(name: '_UsuarioStoreModeBase');

  @override
  void setId(int _id) {
    final _$actionInfo = _$_UsuarioStoreModeBaseActionController.startAction();
    try {
      return super.setId(_id);
    } finally {
      _$_UsuarioStoreModeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String _email) {
    final _$actionInfo = _$_UsuarioStoreModeBaseActionController.startAction();
    try {
      return super.setEmail(_email);
    } finally {
      _$_UsuarioStoreModeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNome(String _nome) {
    final _$actionInfo = _$_UsuarioStoreModeBaseActionController.startAction();
    try {
      return super.setNome(_nome);
    } finally {
      _$_UsuarioStoreModeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'email: ${email.toString()},nome: ${nome.toString()}';
    return '{$string}';
  }
}
