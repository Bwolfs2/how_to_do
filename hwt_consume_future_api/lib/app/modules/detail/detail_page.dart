import 'package:flutter/material.dart';
import 'package:hwt_consume_future_api/app/modules/home/models/pokemon_model.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final PokemonModel pokemon;
  const DetailPage({Key key, this.title = "Detail", @required this.pokemon})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
