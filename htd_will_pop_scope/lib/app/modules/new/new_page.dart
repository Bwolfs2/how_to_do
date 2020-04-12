import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'new_controller.dart';

class NewPage extends StatefulWidget {
  final String title;
  const NewPage({Key key, this.title = "New"}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends ModularState<NewPage, NewController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canBack = false;
        await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Atenção"),
                content: Text("Deseja mesmo sair dessa tela?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Yes"),
                    onPressed: () {
                      canBack = true;
                      Modular.to.pop();
                    },
                  ),
                  RaisedButton(
                    color: Colors.red,
                    child: Text(
                      "No",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: Modular.to.pop,
                  )
                ],
              );
            });
        return canBack;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
