import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'second_controller.dart';

class SecondPage extends StatefulWidget {
  final String title;
  const SecondPage({Key key, this.title = "Second"}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends ModularState<SecondPage, SecondController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('Print'),
              onPressed: () {
                controller.printSome();
              })
        ],
      ),
    );
  }
}
