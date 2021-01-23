import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:snack_bar_without_context/app/snackbar/custom_snack_bar.dart';
import 'home_controller.dart';
import 'package:asuka/asuka.dart' as asuka;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomSnackbar.message('dasd').show();
        },
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              CustomSnackbar.message('dasd').show();
            },
            child: Text('Message'),
          ),
          RaisedButton(
            onPressed: () {
              CustomSnackbar.error('dasd').show();
            },
            child: Text('Error'),
          ),
          RaisedButton(
            onPressed: () {
              CustomSnackbar.warning('dasd').show();
            },
            child: Text('Warning'),
          )
        ],
      ),
    );
  }
}
