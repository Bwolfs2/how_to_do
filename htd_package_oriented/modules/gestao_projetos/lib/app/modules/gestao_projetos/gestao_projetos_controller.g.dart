// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gestao_projetos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GestaoProjetosController on _GestaoProjetosControllerBase, Store {
  final _$valueAtom = Atom(name: '_GestaoProjetosControllerBase.value');

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

  final _$_GestaoProjetosControllerBaseActionController =
      ActionController(name: '_GestaoProjetosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_GestaoProjetosControllerBaseActionController
        .startAction(name: '_GestaoProjetosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_GestaoProjetosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
