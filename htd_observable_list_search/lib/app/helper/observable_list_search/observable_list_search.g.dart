// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_list_search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableListSearch<T> on _ObservableListSearchBase<T>, Store {
  Computed<FutureStatus> _$statusComputed;

  @override
  FutureStatus get status =>
      (_$statusComputed ??= Computed<FutureStatus>(() => super.status,
              name: '_ObservableListSearchBase.status'))
          .value;

  final _$valueAtom = Atom(name: '_ObservableListSearchBase.value');

  @override
  List<T> get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(List<T> value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$searchFilterAtom =
      Atom(name: '_ObservableListSearchBase.searchFilter');

  @override
  Object get searchFilter {
    _$searchFilterAtom.reportRead();
    return super.searchFilter;
  }

  @override
  set searchFilter(Object value) {
    _$searchFilterAtom.reportWrite(value, super.searchFilter, () {
      super.searchFilter = value;
    });
  }

  final _$_observableFutureAtom =
      Atom(name: '_ObservableListSearchBase._observableFuture');

  @override
  ObservableFuture<List<T>> get _observableFuture {
    _$_observableFutureAtom.reportRead();
    return super._observableFuture;
  }

  @override
  set _observableFuture(ObservableFuture<List<T>> value) {
    _$_observableFutureAtom.reportWrite(value, super._observableFuture, () {
      super._observableFuture = value;
    });
  }

  final _$_ObservableListSearchBaseActionController =
      ActionController(name: '_ObservableListSearchBase');

  @override
  void refresh() {
    final _$actionInfo = _$_ObservableListSearchBaseActionController
        .startAction(name: '_ObservableListSearchBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_ObservableListSearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
searchFilter: ${searchFilter},
status: ${status}
    ''';
  }
}
