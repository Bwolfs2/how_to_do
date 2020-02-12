import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_bottom_navigation_bar/app/modules/splash/splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  checkLogin() async {
    //Esse timer é necessario para não dar erro ao redirecionar para proxima pagina sem ter carregado essa antes
    await Future.delayed(Duration(milliseconds: 500));
    try {
      //Se estiver Logado encaminha pra Home
      //If was logged go to Home
      if (await controller.isLogged()) {
        Modular.to.pushReplacementNamed("/home");
      } else {
        //Senão encaminha para o Login
        //If not go to Login
        Modular.to.pushReplacementNamed("/login");
      }
    } catch (e) {
      //If some Error go to Login
      Modular.to.pushReplacementNamed("/login");
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
