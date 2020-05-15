import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () async {
              var response = await Dio().get(
                  "http://ec2-52-87-126-237.compute-1.amazonaws.com/api/Parceiro/ListarPorCategoriaIdOnline/5/16");
              // await controller.changeParameter("1", "2", 1);

              print(response);
            },
          )
        ],
      ),
      body: Observer(
        builder: (BuildContext context) {
          if (controller.pokemons?.status == FutureStatus.pending) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: controller.pokemons.value.length,
            itemBuilder: (context, index) {
              var currentPkm = controller.pokemons.value[index];
              return ListTile(
                title: Text(currentPkm.name),
                subtitle: Text(currentPkm.url.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
