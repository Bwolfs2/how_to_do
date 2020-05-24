// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PagamentoStore on _PagamentoStoreBase, Store {
  final _$pagamentoAtom = Atom(name: '_PagamentoStoreBase.pagamento');

  @override
  PagamentoModel get pagamento {
    _$pagamentoAtom.reportRead();
    return super.pagamento;
  }

  @override
  set pagamento(PagamentoModel value) {
    _$pagamentoAtom.reportWrite(value, super.pagamento, () {
      super.pagamento = value;
    });
  }

  @override
  String toString() {
    return '''
pagamento: ${pagamento}
    ''';
  }
}
