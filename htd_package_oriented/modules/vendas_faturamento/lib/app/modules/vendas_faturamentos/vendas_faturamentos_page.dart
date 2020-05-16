import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'vendas_faturamentos_controller.dart';

class VendasFaturamentosPage extends StatefulWidget {
  final String title;
  const VendasFaturamentosPage({Key key, this.title = "VendasFaturamentos"})
      : super(key: key);

  @override
  _VendasFaturamentosPageState createState() => _VendasFaturamentosPageState();
}

class _VendasFaturamentosPageState
    extends ModularState<VendasFaturamentosPage, VendasFaturamentosController> {
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
