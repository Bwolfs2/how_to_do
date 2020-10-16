import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'first_controller.dart';

class FirstPage extends StatefulWidget {
  final String title;
  const FirstPage({Key key, this.title = "First"}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends ModularState<FirstPage, FirstController> {
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
