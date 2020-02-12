import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/root/drawer/drawer_widget.dart';
import 'package:htd_drawer_navigation/app/modules/root/root_controller.dart';

class RootPage extends StatefulWidget {
  final String title;
  const RootPage({Key key, this.title = "How to do Navigation Drawer"}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends ModularState<RootPage, RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: Observer(builder: (BuildContext context) {
        //Executa o CallBack para recuperar pagina que vai ser exibida
        return controller.selectedPage();
      }),
    );
  }
}
