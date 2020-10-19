// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_module_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OtherModuleController on _OtherModuleControllerBase, Store {
  final _$paramsAtom = Atom(name: '_OtherModuleControllerBase.params');

  @override
  String get params {
    _$paramsAtom.reportRead();
    return super.params;
  }

  @override
  set params(String value) {
    _$paramsAtom.reportWrite(value, super.params, () {
      super.params = value;
    });
  }

  final _$dataAtom = Atom(name: '_OtherModuleControllerBase.data');

  @override
  String get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(String value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$_OtherModuleControllerBaseActionController =
      ActionController(name: '_OtherModuleControllerBase');

  @override
  void fill() {
    final _$actionInfo = _$_OtherModuleControllerBaseActionController
        .startAction(name: '_OtherModuleControllerBase.fill');
    try {
      return super.fill();
    } finally {
      _$_OtherModuleControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
params: ${params},
data: ${data}
    ''';
  }
}
