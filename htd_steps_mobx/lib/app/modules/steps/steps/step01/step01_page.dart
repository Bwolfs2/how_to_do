import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'step01_controller.dart';

class Step01Page extends StatefulWidget {
  final String title;
  const Step01Page({Key key, this.title = "Step01"}) : super(key: key);

  @override
  _Step01PageState createState() => _Step01PageState();
}

class _Step01PageState extends ModularState<Step01Page, Step01Controller> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              return Text("${controller.nomeCompleto}");
            },
          ),
          TextFormField(
            initialValue: controller.name,
            onChanged: controller.changeName,
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextFormField(
            initialValue: controller.name,
            onChanged: controller.changeSuperName,
            decoration: InputDecoration(labelText: "Sobre Nome"),
          ),
          RaisedButton(
            onPressed: () {
              Modular.link.pushNamed("/step2");
            },
            child: Text("Next"),
          )
        ],
      ),
    );
  }
}
