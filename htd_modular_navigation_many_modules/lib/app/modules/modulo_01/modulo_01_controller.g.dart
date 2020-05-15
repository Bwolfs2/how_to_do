// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modulo_01_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Modulo01Controller on _Modulo01ControllerBase, Store {
  final _$titleAtom = Atom(name: '_Modulo01ControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$valueAtom = Atom(name: '_Modulo01ControllerBase.value');

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

  final _$_Modulo01ControllerBaseActionController =
      ActionController(name: '_Modulo01ControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_Modulo01ControllerBaseActionController.startAction(
        name: '_Modulo01ControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_Modulo01ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
value: ${value}
    ''';
  }
}
