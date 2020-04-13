import 'package:mobx/mobx.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
