// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_estoque_online_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompraEstoqueOnlineController
    on _CompraEstoqueOnlineControllerBase, Store {
  final _$valueAtom = Atom(name: '_CompraEstoqueOnlineControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_CompraEstoqueOnlineControllerBaseActionController =
      ActionController(name: '_CompraEstoqueOnlineControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CompraEstoqueOnlineControllerBaseActionController
        .startAction(name: '_CompraEstoqueOnlineControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CompraEstoqueOnlineControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
