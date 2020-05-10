import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'chat_group_controller.dart';

class ChatGroupPage extends StatefulWidget {
  final String title;
  const ChatGroupPage({Key key, this.title = "ChatGroup"}) : super(key: key);

  @override
  _ChatGroupPageState createState() => _ChatGroupPageState();
}

class _ChatGroupPageState
    extends ModularState<ChatGroupPage, ChatGroupController> {
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
