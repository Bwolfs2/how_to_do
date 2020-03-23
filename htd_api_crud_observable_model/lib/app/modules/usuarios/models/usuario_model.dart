import 'dart:convert';

class UsuarioModel {
  final int id;
  final String email;
  final String nome;

  UsuarioModel({
    this.id,
    this.email,
    this.nome,
  });

  UsuarioModel copyWith({
    int id,
    String email,
    String nome,
  }) =>
      UsuarioModel(
        id: id ?? this.id,
        email: email ?? this.email,
        nome: nome ?? this.nome,
      );

  factory UsuarioModel.fromJson(String str) =>
      UsuarioModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromMap(Map<String, dynamic> json) => UsuarioModel(
        id: json["id"],
        email: json["email"],
        nome: json["nome"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "email": email,
        "nome": nome,
      };

  static List<UsuarioModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<UsuarioModel>((item) => UsuarioModel.fromMap(item))
        .toList();
  }
}
