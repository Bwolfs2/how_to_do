// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoController on _ProdutoControllerBase, Store {
  Computed<bool> _$isLoggedComputed;

  @override
  bool get isLogged =>
      (_$isLoggedComputed ??= Computed<bool>(() => super.isLogged,
              name: '_ProdutoControllerBase.isLogged'))
          .value;

  final _$produtosAtom = Atom(name: '_ProdutoControllerBase.produtos');

  @override
  ObservableList<ProdutoModel> get produtos {
    _$produtosAtom.reportRead();
    return super.produtos;
  }

  @override
  set produtos(ObservableList<ProdutoModel> value) {
    _$produtosAtom.reportWrite(value, super.produtos, () {
      super.produtos = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_ProdutoControllerBase.init');

  @override
  Future<dynamic> init(int idLoja) {
    return _$initAsyncAction.run(() => super.init(idLoja));
  }

  @override
  String toString() {
    return '''
produtos: ${produtos},
isLogged: ${isLogged}
    ''';
  }
}
