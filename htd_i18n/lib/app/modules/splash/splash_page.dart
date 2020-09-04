import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    var preCaches = <Future>[
      Future.delayed(Duration(seconds: 2)),
      //Set Initial Path and Default Lang
      Localization.configuration(
        translationLocale: "assets/language",
        defaultLang: "pt_BR",
      )
    ];

    Future.wait(preCaches)
        .then((value) => Modular.to.pushReplacementNamed("/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          Text("Loading")
        ],
      )),
    );
  }
}
