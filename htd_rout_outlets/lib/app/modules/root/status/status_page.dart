import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'status_controller.dart';

class StatusPage extends StatefulWidget {
  final String title;
  const StatusPage({Key key, this.title = "Status"}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends ModularState<StatusPage, StatusController> {
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
