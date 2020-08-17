import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'steps_controller.dart';

class StepsPage extends StatefulWidget {
  final String title;
  const StepsPage({Key key, this.title = "Steps"}) : super(key: key);

  @override
  _StepsPageState createState() => _StepsPageState();
}

class _StepsPageState extends ModularState<StepsPage, StepsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Modular.link.pushNamed("/step1");
            },
            child: Text("Step 1"),
          )
        ],
      ),
    );
  }
}
