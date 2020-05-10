import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
