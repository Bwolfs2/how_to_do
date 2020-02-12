import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  final String title;
  const ItemsPage({Key key, this.title = "Items"}) : super(key: key);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  FlutterLogo(
                    size: 60,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Item $index",
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                      Text("Description $index"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
