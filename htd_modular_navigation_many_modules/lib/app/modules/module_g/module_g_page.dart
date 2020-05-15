import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'module_g_controller.dart';

class ModuleGPage extends StatefulWidget {
  final String title;
  const ModuleGPage({Key key, this.title = "ModuleG"}) : super(key: key);

  @override
  _ModuleGPageState createState() => _ModuleGPageState();
}

class _ModuleGPageState extends ModularState<ModuleGPage, ModuleGController> {
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
