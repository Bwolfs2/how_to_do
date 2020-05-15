import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_controller.dart';

class CarrinhoPage extends StatefulWidget {
  final String title;
  const CarrinhoPage({Key key, @required this.title}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState
    extends ModularState<CarrinhoPage, CarrinhoController> {
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
