import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:htd_login_page_navigation/app/modules/chat/chat_controller.dart';
import 'package:htd_login_page_navigation/app/modules/chat/chat_module.dart';

void main() {
  initModule(ChatModule());
  ChatController chat;

  setUp(() {
    chat = ChatModule.to.get<ChatController>();
  });

  group('ChatController Test', () {
    test("First Test", () {
      expect(chat, isInstanceOf<ChatController>());
    });

    test("Set Value", () {
      expect(chat.value, equals(0));
      chat.increment();
      expect(chat.value, equals(1));
    });
  });
}
