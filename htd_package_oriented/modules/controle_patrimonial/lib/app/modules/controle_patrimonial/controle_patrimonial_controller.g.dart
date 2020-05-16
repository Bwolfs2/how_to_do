// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controle_patrimonial_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControlePatrimonialController
    on _ControlePatrimonialControllerBase, Store {
  final _$valueAtom = Atom(name: '_ControlePatrimonialControllerBase.value');

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

  final _$_ControlePatrimonialControllerBaseActionController =
      ActionController(name: '_ControlePatrimonialControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ControlePatrimonialControllerBaseActionController
        .startAction(name: '_ControlePatrimonialControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ControlePatrimonialControllerBaseActionController
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
