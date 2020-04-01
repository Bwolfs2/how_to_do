import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_search_list_bloc/app/modules/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = Modular.get<HomeBloc>();
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
              onChanged: bloc.filter.add,
              decoration: InputDecoration(
                  hintText: "search", border: OutlineInputBorder()),
            ),
          ),
          Expanded(
              child: StreamBuilder(
            stream: bloc.items,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }

              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }

              return ListView.separated(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                        child: Text("${snapshot.data[index].substring(0, 2)}")),
                    title: Text("${snapshot.data[index]}"),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
