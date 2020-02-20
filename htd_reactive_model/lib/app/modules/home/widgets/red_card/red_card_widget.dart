import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../home_controller.dart';

class RedCardWidget extends StatelessWidget {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            width: double.infinity,
            height: 50,
            child: Text(
              "Red Card",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Observer(
            builder: (BuildContext context) {
              return TextFormField(
                onChanged: controller.user.setNome,
                decoration: InputDecoration(
                  labelText: "Nome",
                ),
              );
            },
          ),
          Observer(
            builder: (BuildContext context) {
              return TextFormField(
                onChanged: controller.user.setSobrenome,
                decoration: InputDecoration(
                  labelText: "Sobrenome",
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
