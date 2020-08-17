import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'step03_controller.dart';

class Step03Page extends StatefulWidget {
  final String title;
  const Step03Page({Key key, this.title = "Step03"}) : super(key: key);

  @override
  _Step03PageState createState() => _Step03PageState();
}

///@todo dasdasda
class _Step03PageState extends ModularState<Step03Page, Step03Controller> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("Confirme seus dados"),
          Text(controller.name ?? ""),
          Text(controller.sobreNome ?? ""),
          Text(controller.endereco ?? ""),
          RaisedButton(
            onPressed: () {
              Modular.to.popUntil(ModalRoute.withName("/steps"));
            },
            child: Text("Finish"),
          )
        ],
      ),
    );
  }
}
