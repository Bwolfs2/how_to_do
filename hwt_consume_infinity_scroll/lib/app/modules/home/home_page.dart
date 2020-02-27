import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      var max = scrollController.position.maxScrollExtent;

      var offset = scrollController.offset;
      if (offset > max - 20) {
        controller.getMore();
      }
    });
  }

  final button = new PopupMenuButton(
      itemBuilder: (_) => <PopupMenuItem<String>>[
            new PopupMenuItem<String>(child: const Text('Doge'), value: 'Doge'),
            new PopupMenuItem<String>(child: const Text('Lion'), value: 'Lion'),
          ],
      onSelected: (_) {
        print(_);
      });

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
              controller: scrollController,
              itemCount: controller.pokemons.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  trailing: button,
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
