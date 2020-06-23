// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_pagamento_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosPagamentoController on _DadosPagamentoControllerBase, Store {
  Computed<PagamentoModel> _$modelComputed;

  @override
  PagamentoModel get model =>
      (_$modelComputed ??= Computed<PagamentoModel>(() => super.model,
              name: '_DadosPagamentoControllerBase.model'))
          .value;

  final _$_DadosPagamentoControllerBaseActionController =
      ActionController(name: '_DadosPagamentoControllerBase');

  @override
  void proximo() {
    final _$actionInfo = _$_DadosPagamentoControllerBaseActionController
        .startAction(name: '_DadosPagamentoControllerBase.proximo');
    try {
      return super.proximo();
    } finally {
      _$_DadosPagamentoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model}
    ''';
  }
}
