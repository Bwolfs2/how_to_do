// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step03_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Step03Controller on _Step03ControllerBase, Store {
  Computed<String> _$nameComputed;

  @override
  String get name => (_$nameComputed ??= Computed<String>(() => super.name,
          name: '_Step03ControllerBase.name'))
      .value;
  Computed<String> _$sobreNomeComputed;

  @override
  String get sobreNome =>
      (_$sobreNomeComputed ??= Computed<String>(() => super.sobreNome,
              name: '_Step03ControllerBase.sobreNome'))
          .value;
  Computed<String> _$enderecoComputed;

  @override
  String get endereco =>
      (_$enderecoComputed ??= Computed<String>(() => super.endereco,
              name: '_Step03ControllerBase.endereco'))
          .value;

  @override
  String toString() {
    return '''
name: ${name},
sobreNome: ${sobreNome},
endereco: ${endereco}
    ''';
  }
}
