import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'controle_financeiro_controller.dart';

class ControleFinanceiroPage extends StatefulWidget {
  final String title;
  const ControleFinanceiroPage({Key key, this.title = "ControleFinanceiro"})
      : super(key: key);

  @override
  _ControleFinanceiroPageState createState() => _ControleFinanceiroPageState();
}

class _ControleFinanceiroPageState
    extends ModularState<ControleFinanceiroPage, ControleFinanceiroController> {
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
