import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: controller.setFilter,
              decoration: InputDecoration(
                  hintText: "search", border: OutlineInputBorder()),
            ),
          ),
          Expanded(
            child: Observer(
              builder: (BuildContext context) {
                if (controller.items == null) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.separated(
                  itemCount: controller.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                          child: Text(
                              "${controller.items[index].substring(0, 2)}")),
                      title: Text("${controller.items[index]}"),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
