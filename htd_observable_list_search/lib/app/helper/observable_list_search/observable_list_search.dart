import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

///Criado por David Araujo - Deivao

part 'observable_list_search.g.dart';

class ObservableListSearch<T> = _ObservableListSearchBase<T>
    with _$ObservableListSearch<T>;

abstract class _ObservableListSearchBase<T> extends Disposable
    with Store
    implements ObservableValue<List<T>> {
  final _disposers = <ReactionDisposer>[];

  @observable
  var value = <T>[].asObservable();

  @observable
  Object searchFilter;

  @observable
  ObservableFuture<List<T>> _observableFuture;

  Future<List<T>> Function(Object) _fillCallback;

  bool _autoSearch;

  _ObservableListSearchBase({
    @required Future<List<T>> Function(Object searchText) refresh,
    void Function(List<T>) onRefresh,
    List<T> initialValue,
    Object initialSearchFilter,
    bool autoSearch = false,
  }) {
    _fillCallback = refresh;
    searchFilter = initialSearchFilter;
    _autoSearch = autoSearch;
    // var key = Uuid().v4();

    _disposers.add(autorun(
      (_) {
        if (_observableFuture?.status == FutureStatus.fulfilled) {
          final newData = _observableFuture?.value;
          _observableFuture = null;
          value = newData.asObservable();
          onRefresh?.call(value);
        }
      },
      // name: "$key-filter-search",
      // delay: 250,
    ));

    if (initialValue != null) {
      value = initialValue.asObservable();
    } else {
      this.refresh();
    }
  }

  Future<void> updateFilter(Object filter) async {
    searchFilter = filter;
    if (_autoSearch) {
      refresh();
    }
  }

  Future<List<T>> makeFuture() {
    return Future.delayed(
      Duration(milliseconds: 250),
      () => _fillCallback?.call(searchFilter),
    );
  }

  @computed
  FutureStatus get status => _observableFuture?.status;

  @action
  void refresh() {
    _observableFuture = makeFuture().asObservable();
  }

  @override
  void dispose() {
    for (var disposer in _disposers) {
      disposer();
    }
  }
}
