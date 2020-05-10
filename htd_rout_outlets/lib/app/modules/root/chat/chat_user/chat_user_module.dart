import 'package:htd_rout_outlets/app/modules/root/chat/chat_user/chat_user_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_rout_outlets/app/modules/root/chat/chat_user/chat_user_page.dart';

class ChatUserModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatUserController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatUserPage()),
      ];

  static Inject get to => Inject<ChatUserModule>.of();
}
