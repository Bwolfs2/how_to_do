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
      body: Column(
        children: <Widget>[
          //Navega para a proxima tela
          //Go to the Page informed
          RaisedButton(
            onPressed: () {
              Modular.to.pushNamed("/home/page1");
            },
            child: Text("Push"),
          ),
          //Sobrescreve a tela que vc se encontra
          //Replace the Page
          RaisedButton(
            onPressed: () {
              Modular.to.pushReplacementNamed("/home/page1");
            },
            child: Text("Push Replacement"),
          ),
          //Volta a navegação até o informado no ModalRoute.withName entao navega para a pagina informada
          //Back to the ModalRoute.withName and go to the Page informed
          RaisedButton(
            onPressed: () {
              Modular.to.pushNamedAndRemoveUntil(
                  "/home/page1", ModalRoute.withName('/home'));
            },
            child: Text("Push and Remove Untin"),
          ),

          //Fecha a pagina e navega para a page informada
          //Close the page and go to the Page informed
          RaisedButton(
            onPressed: () {
              Modular.to.popAndPushNamed("/home/page1");
            },
            child: Text("Pop and Push"),
          ),
          //Fecha a pagina ou volta para a pagina anterior, usado para fechar Dialogs tbm
          //Close the page or back to the last page, used to close Dialogs
          RaisedButton(
            onPressed: () {
              Modular.to.pop();
            },
            child: Text("Pop"),
          ),
        ],
      ),
    );
  }
}
