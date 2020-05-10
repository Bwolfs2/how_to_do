import 'package:mobx/mobx.dart';

part 'chat_user_controller.g.dart';

class ChatUserController = _ChatUserControllerBase with _$ChatUserController;

abstract class _ChatUserControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
