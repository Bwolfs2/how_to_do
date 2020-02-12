import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  final String title;
  const CallsPage({Key key, this.title = "Calls"}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Text(
        "Fim",
        style: TextStyle(fontSize: 40, color: Colors.black87),
      )),
    );
  }
}
