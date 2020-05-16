import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'compra_estoque_online_controller.dart';

class CompraEstoqueOnlinePage extends StatefulWidget {
  final String title;
  const CompraEstoqueOnlinePage({Key key, this.title = "CompraEstoqueOnline"})
      : super(key: key);

  @override
  _CompraEstoqueOnlinePageState createState() =>
      _CompraEstoqueOnlinePageState();
}

class _CompraEstoqueOnlinePageState extends ModularState<
    CompraEstoqueOnlinePage, CompraEstoqueOnlineController> {
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
