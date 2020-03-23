// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_update_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddOrUpdateController on _AddOrUpdateControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_AddOrUpdateControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$saveAsyncAction = AsyncAction('save');

  @override
  Future<bool> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  @override
  String toString() {
    final string = 'isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
