import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'exemplo_controller.dart';

class ExemploPage extends StatefulWidget {
  final String title;
  const ExemploPage({Key key, this.title = "Exemplo"}) : super(key: key);

  @override
  _ExemploPageState createState() => _ExemploPageState();
}

class _ExemploPageState extends ModularState<ExemploPage, ExemploController> {
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
