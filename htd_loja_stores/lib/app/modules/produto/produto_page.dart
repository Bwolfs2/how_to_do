import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  final String nomeDaLoja;
  final String logo;
  final String id;
  const ProdutoPage({Key key, @required this.nomeDaLoja, this.logo, this.id})
      : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends ModularState<ProdutoPage, ProdutoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/${widget.logo}"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(widget.nomeDaLoja),
          ],
        ),
      ),
      floatingActionButton: Observer(builder: (_) {
        if (controller.isLogged) {
          return FloatingActionButton(
            onPressed: () {
              Modular.to.pushNamed("/compra/carrinho/vindo da compra");
            },
            child: Icon(Icons.shopping_cart),
          );
        } else {
          return FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              Modular.to.pushNamed("/login");
            },
            child: Icon(Icons.person),
          );
        }
      }),
      body: Observer(
        builder: (_) {
          return GridView.builder(
            itemCount: controller.produtos?.length ?? 0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .7),
            itemBuilder: (_, index) {
              var current = controller.produtos[index];

              return InkWell(
                onTap: () {
                  Modular.to.pushNamed("/compra", arguments: current);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage("${current.imagem}"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    current.nome,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "R\$ ${current.preco}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "R\$ ${current.preco}",
                                  style: TextStyle(
                                    color: Colors.red[300],
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${current.descricao}",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
