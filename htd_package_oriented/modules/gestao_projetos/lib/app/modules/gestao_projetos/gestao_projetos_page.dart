import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'gestao_projetos_controller.dart';

class GestaoProjetosPage extends StatefulWidget {
  final String title;
  const GestaoProjetosPage({Key key, this.title = "GestaoProjetos"})
      : super(key: key);

  @override
  _GestaoProjetosPageState createState() => _GestaoProjetosPageState();
}

class _GestaoProjetosPageState
    extends ModularState<GestaoProjetosPage, GestaoProjetosController> {
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
