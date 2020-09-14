// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  Computed<bool> _$isLoggedComputed;

  @override
  bool get isLogged => (_$isLoggedComputed ??=
          Computed<bool>(() => super.isLogged, name: '_AuthStoreBase.isLogged'))
      .value;
  Computed<bool> _$isAdminComputed;

  @override
  bool get isAdmin => (_$isAdminComputed ??=
          Computed<bool>(() => super.isAdmin, name: '_AuthStoreBase.isAdmin'))
      .value;

  final _$_loggedAtom = Atom(name: '_AuthStoreBase._logged');

  @override
  bool get _logged {
    _$_loggedAtom.reportRead();
    return super._logged;
  }

  @override
  set _logged(bool value) {
    _$_loggedAtom.reportWrite(value, super._logged, () {
      super._logged = value;
    });
  }

  final _$_loggedAdminAtom = Atom(name: '_AuthStoreBase._loggedAdmin');

  @override
  bool get _loggedAdmin {
    _$_loggedAdminAtom.reportRead();
    return super._loggedAdmin;
  }

  @override
  set _loggedAdmin(bool value) {
    _$_loggedAdminAtom.reportWrite(value, super._loggedAdmin, () {
      super._loggedAdmin = value;
    });
  }

  final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase');

  @override
  void changeLogged(bool logged) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.changeLogged');
    try {
      return super.changeLogged(logged);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoggedAdmin(bool admin) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.changeLoggedAdmin');
    try {
      return super.changeLoggedAdmin(admin);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged},
isAdmin: ${isAdmin}
    ''';
  }
}
