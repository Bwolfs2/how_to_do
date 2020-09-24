import 'dart:convert';

class ProductModel {
  ProductModel({
    this.id,
    this.nome,
    this.valor,
  });

  final String id;
  final String nome;
  final int valor;

  ProductModel copyWith({
    String id,
    String nome,
    int valor,
  }) =>
      ProductModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        valor: valor ?? this.valor,
      );

  factory ProductModel.fromJson(String str) =>
      ProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "valor": valor,
      };

  static List<ProductModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<ProductModel>((item) => ProductModel.fromMap(item))
        .toList();
  }
}
