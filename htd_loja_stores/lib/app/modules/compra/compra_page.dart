import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/produto/models/produto_model.dart';

import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final ProdutoModel produtoModel;
  final String title;
  const CompraPage({
    Key key,
    this.title = "Compra",
    @required this.produtoModel,
  }) : super(key: key);

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends ModularState<CompraPage, CompraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(widget.produtoModel.nome),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Image.network(
              widget.produtoModel.imagem,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.produtoModel.nome,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Text(
                              " ( 24 )",
                              style: TextStyle(
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "R\$ ${widget.produtoModel.preco}",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "R\$ ${widget.produtoModel.preco}",
                              style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 18,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text("${widget.produtoModel.descricao}"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child:
                                    Text("Cod: 0000${widget.produtoModel.id}"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    color: Colors.amber,
                    onPressed: () {
                      Modular.link.popAndPushNamed("/carrinho/vindo do compra");
                    },
                    child: Text(
                      "Adicionar ao carrinho".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
