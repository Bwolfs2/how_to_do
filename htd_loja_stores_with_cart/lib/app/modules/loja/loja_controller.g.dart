// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loja_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LojaController on _LojaControllerBase, Store {
  Computed<bool> _$isLoggedComputed;

  @override
  bool get isLogged =>
      (_$isLoggedComputed ??= Computed<bool>(() => super.isLogged,
              name: '_LojaControllerBase.isLogged'))
          .value;

  final _$lojasAtom = Atom(name: '_LojaControllerBase.lojas');

  @override
  ObservableList<LojaModel> get lojas {
    _$lojasAtom.reportRead();
    return super.lojas;
  }

  @override
  set lojas(ObservableList<LojaModel> value) {
    _$lojasAtom.reportWrite(value, super.lojas, () {
      super.lojas = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_LojaControllerBase.init');

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
lojas: ${lojas},
isLogged: ${isLogged}
    ''';
  }
}
