// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_g_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ModuleGController on _ModuleGControllerBase, Store {
  final _$titleAtom = Atom(name: '_ModuleGControllerBase.title');

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

  final _$valueAtom = Atom(name: '_ModuleGControllerBase.value');

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

  final _$_ModuleGControllerBaseActionController =
      ActionController(name: '_ModuleGControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ModuleGControllerBaseActionController.startAction(
        name: '_ModuleGControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ModuleGControllerBaseActionController.endAction(_$actionInfo);
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
