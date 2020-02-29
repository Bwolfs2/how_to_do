import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store, Disposable {
  ReactionDisposer react;

  _HomeControllerBase() {
    getData();

    react = reaction((_) => filter, (_) {
      items = _itemsTemp.where((data) => data.contains(filter)).toList();
    });
  }

  List<String> _itemsTemp;

  @observable
  List<String> items;

  @observable
  String filter = "";

  @action
  void setFilter(String _filter) => filter = _filter;

  @action
  void getData() {
    _itemsTemp = List.generate(
        50, (index) => "${index.toString().padLeft(2, "0")} - Produto");
    items = _itemsTemp;
  }

  @override
  void dispose() {
    react();
  }
}
