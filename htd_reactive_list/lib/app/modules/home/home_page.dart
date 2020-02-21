import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_reactive_list/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (BuildContext context) {
          var list = controller.produtos;
          return ListView.separated(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Observer(
                builder: (BuildContext context) {
                  return ListTile(
                    leading: CircleAvatar(child: Text("${list[index].id}")),
                    title: Text("${list[index].nome}"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    ),
                    onTap: () {
                      controller.changeName(list[index].id);
                    },
                  );
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
        },
      ),
    );
  }
}
