// To parse this JSON data, do
//
//     final pkmModel = pkmModelFromJson(jsonString);

import 'dart:convert';

class PkmModel {
  String name;
  String url;

  PkmModel({
    this.name,
    this.url,
  });

  PkmModel copyWith({
    String name,
    String url,
  }) =>
      PkmModel(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory PkmModel.fromJson(String str) => PkmModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PkmModel.fromMap(Map<String, dynamic> json) => PkmModel(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}
