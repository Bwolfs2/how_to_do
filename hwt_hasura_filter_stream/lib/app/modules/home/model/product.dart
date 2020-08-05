import 'dart:convert';

class Product {
  Product({
    this.id,
    this.name,
    this.description,
    this.barCode,
  });

  final String id;
  final String name;
  final String description;
  final String barCode;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        barCode: json["bar_code"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "bar_code": barCode,
      };

  static List<Product> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<Product>((item) => Product.fromMap(item)).toList();
  }
}
