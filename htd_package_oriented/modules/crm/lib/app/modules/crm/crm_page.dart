import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'crm_controller.dart';

class CrmPage extends StatefulWidget {
  final String title;
  const CrmPage({Key key, this.title = "Crm"}) : super(key: key);

  @override
  _CrmPageState createState() => _CrmPageState();
}

class _CrmPageState extends ModularState<CrmPage, CrmController> {
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
