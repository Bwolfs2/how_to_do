import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'chat_controller.dart';

class ChatPage extends StatefulWidget {
  final String title;
  const ChatPage({Key key, this.title = "Chat"}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends ModularState<ChatPage, ChatController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.green.withOpacity(.8),
                onPressed: () {
                  Navigator.of(context).pushNamed('/chatUser');
                },
                child: Text(
                  "Chat User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue.withOpacity(.8),
                onPressed: () {
                  Navigator.of(context).pushNamed('/chatGroup');
                },
                child: Text(
                  "Chat Group",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
