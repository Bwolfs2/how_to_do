import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hwt_hasura_filter_stream/app/modules/home/model/product.dart';
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
          TextFormField(
            onChanged: controller.filter,
            decoration: InputDecoration(hintText: ""),
          ),
          StreamBuilder<List<Product>>(
            stream: controller.products,
            builder:
                (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
              if (snapshot == null) {
                return CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }

              if (!snapshot.hasData) {
                return Center(
                  child: Text("Nenhum dado encontrado"),
                );
              }

              var data = snapshot.data;

              return Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (_, index) => ListTile(
                    title: Text(
                      data[index].name,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
