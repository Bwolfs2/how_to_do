import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'calls_controller.dart';

class CallsPage extends StatefulWidget {
  final String title;
  const CallsPage({Key key, this.title = "Calls"}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends ModularState<CallsPage, CallsController> {
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
