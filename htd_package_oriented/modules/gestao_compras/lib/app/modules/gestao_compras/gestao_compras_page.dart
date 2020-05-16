import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'gestao_compras_controller.dart';

class GestaoComprasPage extends StatefulWidget {
  final String title;
  const GestaoComprasPage({Key key, this.title = "GestaoCompras"})
      : super(key: key);

  @override
  _GestaoComprasPageState createState() => _GestaoComprasPageState();
}

class _GestaoComprasPageState
    extends ModularState<GestaoComprasPage, GestaoComprasController> {
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
