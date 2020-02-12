import 'package:flutter/src/widgets/framework.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/chat/chat_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/chat/chat_page.dart';

class ChatModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatController()),
      ];

  static Inject get to => Inject<ChatModule>.of();

  @override
  // TODO: implement view
  Widget get view => ChatPage();
}
