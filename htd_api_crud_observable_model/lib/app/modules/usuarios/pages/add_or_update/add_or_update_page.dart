import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import './../../models/usuario_model.dart';

import 'add_or_update_controller.dart';

class AddOrUpdatePage extends StatefulWidget {
  final String title;
  final UsuarioModel usuarioModel;
  const AddOrUpdatePage(
      {Key key, this.title = "AddOrUpdate", this.usuarioModel})
      : super(key: key);

  @override
  _AddOrUpdatePageState createState() => _AddOrUpdatePageState();
}

class _AddOrUpdatePageState
    extends ModularState<AddOrUpdatePage, AddOrUpdateController> {
  @override
  void initState() {
    super.initState();
    controller.fillData(widget.usuarioModel);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: controller.nomeController,
                  onChanged: controller.usuarioStore.setNome,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: controller.emailController,
                  onChanged: controller.usuarioStore.setEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () async {
                      var result = await await controller.save();
                      if (result) {
                        Modular.to.pop();
                      }
                    },
                    child: Text("Salvar"),
                  ),
                )
              ],
            ),
          ),
        ),
        Observer(
          builder: (context) {
            if (controller.isLoading) {
              return Container(
                color: Colors.black26,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return Container();
          },
        )
      ],
    );
  }
}
