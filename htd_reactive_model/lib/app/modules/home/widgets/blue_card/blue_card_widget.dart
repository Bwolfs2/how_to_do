import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../home_controller.dart';

class BlueCardWidget extends StatelessWidget {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: double.infinity,
            height: 50,
            child: Text(
              "Blue Card",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                "Nome:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Observer(
                builder: (BuildContext context) {
                  return Text(controller.user.nome ?? "Nada informado");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                "Sobrenome:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Observer(
                builder: (BuildContext context) {
                  return Text(controller.user.sobrenome ?? "Nada informado");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
