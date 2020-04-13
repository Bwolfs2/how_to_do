import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                FlutterLogo(
                  size: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.loginController,
                  decoration: InputDecoration(
                    labelText: "Login",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: Text("Entrar"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
