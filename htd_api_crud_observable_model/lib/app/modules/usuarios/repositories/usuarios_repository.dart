import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../models/usuario_model.dart';
import '../models/usuario_store_model.dart';

class UsuariosRepository extends Disposable {
  final HasuraConnect hasuraConnect;

  UsuariosRepository(this.hasuraConnect);

  Future<List<UsuarioModel>> getUsuarios() async {
    var _query = r'''
      query getUsuarios {
        usuarios {
          id
          email
          nome
        }
      }
    ''';

    final response = await hasuraConnect.query(_query);
    return UsuarioModel.fromJsonList(response["data"]["usuarios"] as List);
  }

  Future<bool> addOrUpdateUsuario(UsuarioStoreModel usuario) =>
      usuario.id != null ? _updateUsuario(usuario) : _addUsuario(usuario);

  Future<bool> _addUsuario(UsuarioStoreModel usuario) async {
    var _query = r'''
      mutation addUsuario( $email: String!, $nome: String!) {
        insert_usuarios(objects: {email: $email, nome: $nome}){
          affected_rows
        }
      }''';

    final response = await hasuraConnect.mutation(_query, variables: {
      "email": usuario.email,
      "nome": usuario.nome,
    });

    return response["data"]["insert_usuarios"]["affected_rows"] > 0;
  }

  Future<bool> _updateUsuario(UsuarioStoreModel usuario) async {
    var _query = r'''
      mutation updateUsuario($id: Int, $email: String!, $nome: String!) {
        update_usuarios(where: {id: {_eq: $id}}, _set: {email: $email, nome:  $nome}) {
          affected_rows
        }
      }''';

    final response = await hasuraConnect.mutation(_query, variables: {
      "email": usuario.email,
      "nome": usuario.nome,
      "id": usuario.id
    });

    return response["data"]["update_usuarios"]["affected_rows"] > 0;
  }

  @override
  void dispose() {}
}
