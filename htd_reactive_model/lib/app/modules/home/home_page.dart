import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_reactive_model/app/modules/home/home_controller.dart';
import 'package:htd_reactive_model/app/modules/home/widgets/blue_card/blue_card_widget.dart';
import 'package:htd_reactive_model/app/modules/home/widgets/red_card/red_card_widget.dart';
import 'package:htd_reactive_model/app/shared/extensions_date.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RedCardWidget(),
            SizedBox(
              height: 50,
            ),
            BlueCardWidget()
          ],
        ),
      ),
    );
  }
}
