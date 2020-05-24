import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'auth_controller.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key key, this.title = "Auth"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.amber,
              height: 250,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/logo_bwolf.png",
                    height: 150,
                  ),
                  Text("Think like a wolf",
                      style: GoogleFonts.chelseaMarket(fontSize: 30))
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: controller.senhaController,
                    decoration: InputDecoration(
                      labelText: "Senha",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: controller.entrar,
                      child: Text("Entrar"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
