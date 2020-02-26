import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[        
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.insert_emoticon),
                            Center(child: Text("Item $index")),
                          ],
                        ),
                      )),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(title: Text("Item $index")),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
