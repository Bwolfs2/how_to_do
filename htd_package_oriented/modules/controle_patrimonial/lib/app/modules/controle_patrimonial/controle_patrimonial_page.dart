import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'controle_patrimonial_controller.dart';

class ControlePatrimonialPage extends StatefulWidget {
  final String title;
  const ControlePatrimonialPage({Key key, this.title = "ControlePatrimonial"})
      : super(key: key);

  @override
  _ControlePatrimonialPageState createState() =>
      _ControlePatrimonialPageState();
}

class _ControlePatrimonialPageState extends ModularState<
    ControlePatrimonialPage, ControlePatrimonialController> {
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
