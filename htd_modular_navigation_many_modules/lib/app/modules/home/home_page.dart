import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (context) {
          return Text("Modulo Home");
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
              child: Text("VAi 2"),
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
