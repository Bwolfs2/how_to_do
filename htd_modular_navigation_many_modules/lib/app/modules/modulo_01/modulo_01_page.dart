import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'modulo_01_controller.dart';

class Modulo01Page extends StatefulWidget {
  final String title;
  const Modulo01Page({Key key, @required this.title}) : super(key: key);

  @override
  _Modulo01PageState createState() => _Modulo01PageState();
}

class _Modulo01PageState
    extends ModularState<Modulo01Page, Modulo01Controller> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (context) {
          return Text(controller.title);
        }),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (context) {
            return RaisedButton(
              child: Text("VAi 1"),
              onPressed: () {
                Modular.to
                    .pushNamed("/modulo01", arguments: "${controller.title} -");
              },
            );
          }),
          Observer(builder: (context) {
            return RaisedButton(
              child: Text("VAi G"),
              onPressed: () {
                Modular.to
                    .pushNamed("/moduloG", arguments: "${controller.title} -");
              },
            );
          }),
        ],
      ),
    );
  }
}
