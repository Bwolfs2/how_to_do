import 'package:flutter/material.dart';
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
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              //   width: double.infinity,
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/login");
                  },
                  title: Text("login"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/compra_estoque_online");
                  },
                  title: Text("compra_estoque_online"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/controle_financeiro");
                  },
                  title: Text("controle_financeiro"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/controle_patrimonial");
                  },
                  title: Text("controle_patrimonial"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/crm");
                  },
                  title: Text("crm"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/gestao_compras");
                  },
                  title: Text("gestao_compras"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/gestao_projetos");
                  },
                  title: Text("gestao_projetos"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.pushNamed("/vendas_faturamento");
                  },
                  title: Text("vendas_faturamento"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
