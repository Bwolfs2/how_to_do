import 'package:mobx/mobx.dart';

part 'chat_group_controller.g.dart';

class ChatGroupController = _ChatGroupControllerBase with _$ChatGroupController;

abstract class _ChatGroupControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
