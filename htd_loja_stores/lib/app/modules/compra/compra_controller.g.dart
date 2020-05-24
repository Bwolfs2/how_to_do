// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompraController on _CompraControllerBase, Store {
  final _$valueAtom = Atom(name: '_CompraControllerBase.value');

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

  final _$_CompraControllerBaseActionController =
      ActionController(name: '_CompraControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CompraControllerBaseActionController.startAction(
        name: '_CompraControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CompraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
