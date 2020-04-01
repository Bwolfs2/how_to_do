import 'dart:core';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends Disposable {
  //dispose will be called automatically by closing its streams

  HomeBloc() {
    getData();
  }

  List<String> _items;

  final filter = BehaviorSubject<String>.seeded("");

  Stream<List<String>> get items =>
      filter.asyncMap((event) => getDataFiltered(event));

  void getData() {
    _items = List.generate(
        50, (index) => "${index.toString().padLeft(2, "0")} - Produto");
    filter.add("");
  }

  @override
  void dispose() {}

  List<String> getDataFiltered(filter) {
    var a = _items?.where((item) => item.contains(filter))?.toList();
    return a;
  }
}
