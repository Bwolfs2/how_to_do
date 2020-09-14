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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              onPressed: () async {
                controller.loggin();
                await Modular.to.pushReplacementNamed('/home');
              },
              child: Text('Entrar'),
            ),
            RaisedButton(
              onPressed: () async {
                controller.logginAdmin();
                await Modular.to.pushReplacementNamed('/home');
              },
              child: Text('Entrar Como Admin'),
            ),
          ],
        ),
      ),
    );
  }
}
