// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsuariosController on _UsuariosControllerBase, Store {
  final _$usuariosAtom = Atom(name: '_UsuariosControllerBase.usuarios');

  @override
  ObservableFuture<List<UsuarioModel>> get usuarios {
    _$usuariosAtom.context.enforceReadPolicy(_$usuariosAtom);
    _$usuariosAtom.reportObserved();
    return super.usuarios;
  }

  @override
  set usuarios(ObservableFuture<List<UsuarioModel>> value) {
    _$usuariosAtom.context.conditionallyRunInAction(() {
      super.usuarios = value;
      _$usuariosAtom.reportChanged();
    }, _$usuariosAtom, name: '${_$usuariosAtom.name}_set');
  }

  final _$_UsuariosControllerBaseActionController =
      ActionController(name: '_UsuariosControllerBase');

  @override
  void refresh() {
    final _$actionInfo =
        _$_UsuariosControllerBaseActionController.startAction();
    try {
      return super.refresh();
    } finally {
      _$_UsuariosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'usuarios: ${usuarios.toString()}';
    return '{$string}';
  }
}
