import 'package:flutter_modular/flutter_modular.dart';

import 'chat_group_controller.dart';
import 'chat_group_page.dart';

class ChatGroupModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatGroupController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatGroupPage()),
      ];

  static Inject get to => Inject<ChatGroupModule>.of();
}
