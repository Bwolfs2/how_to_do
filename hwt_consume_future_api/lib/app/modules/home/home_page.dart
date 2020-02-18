import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:hwt_consume_future_api/app/modules/home/home_controller.dart';

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
      body: Stack(
        children: <Widget>[
          Observer(builder: (_) {
            return ListView.builder(
              itemCount: controller.pokemons.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Get.toNamed("/detail",
                        arguments: {"pkm": controller.pokemons[index]});
                  },
                  title: Text(controller.pokemons[index].name),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        controller.pokemons[index].sprites.frontDefault),
                  ),
                );
              },
            );
          }),
          Observer(builder: (_) {
            if (!controller.isLoading) {
              return Container();
            }

            return Positioned.fill(
                child: Container(
              child: CircularProgressIndicator(),
              color: Colors.black38,
              alignment: Alignment.center,
            ));
          })
        ],
      ),
    );
  }
}
