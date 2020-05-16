import 'package:mobx/mobx.dart';

part 'crm_controller.g.dart';

class CrmController = _CrmControllerBase with _$CrmController;

abstract class _CrmControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
