import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_reactive_list/app/modules/home/home_controller.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addItem();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Observer(
            builder: (BuildContext context) {
              return CircleAvatar(
                child: Text(controller.produtos.length.toString()),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Observer(
                  builder: (BuildContext context) {
                    var list = controller.categoria.listaProdutos;
                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount: list.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Observer(
                          builder: (BuildContext context) {
                            return ListTile(
                              leading: CircleAvatar(
                                  child: Text("${list[index].id}")),
                              title: Text("${list[index].nome}"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                              ),
                              onTap: () {
                                controller.changeName(list[index].id);
                              },
                            );
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    );
                  },
                ),
                Divider(
                  thickness: 10,
                  color: Colors.red,
                ),
                Observer(
                  builder: (BuildContext context) {
                    var list = controller.produtos;
                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount: list.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Observer(
                          builder: (BuildContext context) {
                            return ListTile(
                              leading: CircleAvatar(
                                  child: Text("${list[index].id}")),
                              title: Text("${list[index].nome}"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                              ),
                              onTap: () {
                                controller.changeName(list[index].id);
                              },
                            );
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey,
              ),
              height: 60,
              child: Column(
                children: [
                  TextFormField(
                    // textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      //    suffixIcon: Icon(Icons.ac_unit),
                      //  prefix: Icon(Icons.access_alarm),

                      hintText: "A quem você deseja pagar?",
                      hintStyle: TextStyle(color: Colors.grey[300]),
                      // fillColor: Colors.blue,
                      //filled: true,
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

InputBorder get border => InputBorder.none;

InputBorder get borderRounded => OutlineInputBorder(
    borderRadius: BorderRadius.circular(60), borderSide: BorderSide(width: 0));
