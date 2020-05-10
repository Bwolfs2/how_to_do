import 'package:htd_rout_outlets/app/modules/root/chat/chat_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_rout_outlets/app/modules/root/chat/chat_page.dart';
import 'package:htd_rout_outlets/app/modules/root/chat/chat_user/chat_user_module.dart';

import 'chat_group/chat_group_module.dart';

class ChatModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatPage()),
        Router("/chatUser",
            module: ChatUserModule(), transition: TransitionType.fadeIn),
        Router("/chatGroup",
            module: ChatGroupModule(), transition: TransitionType.fadeIn)
      ];

  static Inject get to => Inject<ChatModule>.of();
}
