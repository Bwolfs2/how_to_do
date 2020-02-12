import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = _ChatBase with _$ChatController;

abstract class _ChatBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
