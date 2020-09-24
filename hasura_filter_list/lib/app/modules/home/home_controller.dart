import 'package:flutter/cupertino.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mobx/mobx.dart';

import 'models/product_model.dart';
import 'repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository homeRepository;

  _HomeControllerBase(this.homeRepository) {
    productStream = homeRepository.getProduto();
  }

  Snapshot<List<ProductModel>> productStream;

  final textController = TextEditingController();
  void filter() {
    productStream.changeVariable({'filter': "%${textController.text}%"});
  }
}
