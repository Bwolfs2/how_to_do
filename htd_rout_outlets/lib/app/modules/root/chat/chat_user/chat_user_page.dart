import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'chat_user_controller.dart';

class ChatUserPage extends StatefulWidget {
  final String title;
  const ChatUserPage({Key key, this.title = "ChatUser"}) : super(key: key);

  @override
  _ChatUserPageState createState() => _ChatUserPageState();
}

class _ChatUserPageState
    extends ModularState<ChatUserPage, ChatUserController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
