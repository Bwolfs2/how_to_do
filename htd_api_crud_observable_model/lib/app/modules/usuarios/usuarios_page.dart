import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'usuarios_controller.dart';

class UsuariosPage extends StatefulWidget {
  final String title;
  const UsuariosPage({Key key, this.title = "Usuarios"}) : super(key: key);

  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState
    extends ModularState<UsuariosPage, UsuariosController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: controller.refresh,
              )
            ],
          ),
          body: Observer(builder: (_) {
            if (controller.usuarios.status == FutureStatus.pending) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (controller.usuarios.value.isEmpty) {
              return Center(
                child: Text("Nenhum Usuário Adicionado!!!"),
              );
            }

            return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  controller.usuarios.value[index].nome,
                ),
                subtitle: Text(
                  controller.usuarios.value[index].email,
                ),
                trailing: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () async {
                      await Modular.to.pushNamed(
                        "/addOrUpdate/Atualizar Usuário",
                        arguments: controller.usuarios.value[index],
                      );
                      controller.refresh();
                    }),
              ),
              itemCount: controller.usuarios.value.length,
              separatorBuilder: (context, index) => Divider(),
            );
          }),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Modular.to.pushNamed("/addOrUpdate/Adicionar novo Usuário");
              controller.refresh();
            },
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
