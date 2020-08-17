import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'step02_controller.dart';

class Step02Page extends StatefulWidget {
  final String title;
  const Step02Page({Key key, this.title = "Step02"}) : super(key: key);

  @override
  _Step02PageState createState() => _Step02PageState();
}

class _Step02PageState extends ModularState<Step02Page, Step02Controller> {
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
              return Text(controller.address ?? "");
            },
          ),
          TextFormField(
            initialValue: controller.address,
            onChanged: controller.setAddress,
            decoration: InputDecoration(labelText: "Endereco"),
          ),
          RaisedButton(
            onPressed: () {
              Modular.link.pushNamed("/step3");
            },
            child: Text("Next"),
          )
        ],
      ),
    );
  }
}
