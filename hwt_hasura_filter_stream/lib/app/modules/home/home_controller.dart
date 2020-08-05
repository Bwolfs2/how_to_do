import 'package:hasura_connect/hasura_connect.dart';
import 'package:hwt_hasura_filter_stream/app/modules/home/model/product.dart';
import 'package:hwt_hasura_filter_stream/app/modules/home/repository/home_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository repository;
  Snapshot<List<Product>> products;
  @observable
  int value = 0;

  _HomeControllerBase(this.repository) {
    products = repository.fetchPost("");
  }

  void filter(String desc) {
    products.changeVariable({"description": "%$desc%"});
  }

  @action
  void increment() {
    value++;
  }
}
