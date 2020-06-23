// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_endereco_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosEnderecoController on _DadosEnderecoControllerBase, Store {
  Computed<PagamentoModel> _$modelComputed;

  @override
  PagamentoModel get model =>
      (_$modelComputed ??= Computed<PagamentoModel>(() => super.model,
              name: '_DadosEnderecoControllerBase.model'))
          .value;

  final _$_DadosEnderecoControllerBaseActionController =
      ActionController(name: '_DadosEnderecoControllerBase');

  @override
  void proximo() {
    final _$actionInfo = _$_DadosEnderecoControllerBaseActionController
        .startAction(name: '_DadosEnderecoControllerBase.proximo');
    try {
      return super.proximo();
    } finally {
      _$_DadosEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model}
    ''';
  }
}
