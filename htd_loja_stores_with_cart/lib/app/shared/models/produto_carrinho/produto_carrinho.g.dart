// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_carrinho.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoCarrinho on _ProdutoCarrinhoBase, Store {
  final _$produtoAtom = Atom(name: '_ProdutoCarrinhoBase.produto');

  @override
  ProdutoModel get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(ProdutoModel value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$quantidadeAtom = Atom(name: '_ProdutoCarrinhoBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$_ProdutoCarrinhoBaseActionController =
      ActionController(name: '_ProdutoCarrinhoBase');

  @override
  void adicionar() {
    final _$actionInfo = _$_ProdutoCarrinhoBaseActionController.startAction(
        name: '_ProdutoCarrinhoBase.adicionar');
    try {
      return super.adicionar();
    } finally {
      _$_ProdutoCarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remover() {
    final _$actionInfo = _$_ProdutoCarrinhoBaseActionController.startAction(
        name: '_ProdutoCarrinhoBase.remover');
    try {
      return super.remover();
    } finally {
      _$_ProdutoCarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produto: ${produto},
quantidade: ${quantidade}
    ''';
  }
}
