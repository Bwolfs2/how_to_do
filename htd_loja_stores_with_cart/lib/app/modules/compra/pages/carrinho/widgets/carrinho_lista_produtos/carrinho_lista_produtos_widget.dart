import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'carrinho_lista_produtos_controller.dart';

class CarrinhoListaProdutosWidget extends StatefulWidget {
  @override
  _CarrinhoListaProdutosWidgetState createState() =>
      _CarrinhoListaProdutosWidgetState();
}

class _CarrinhoListaProdutosWidgetState extends ModularState<
    CarrinhoListaProdutosWidget, CarrinhoListaProdutosController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        if (controller.produtos == null) {
          return CircularProgressIndicator();
        }

        return ListView.builder(
          shrinkWrap: true,
          itemCount: controller.produtos.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(5),
              child: ListTile(
                leading: Image.network(
                  controller.produtos[index].produto.imagem,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(controller.produtos[index].produto.nome),
                subtitle:
                    Text("R\$ ${controller.produtos[index].produto.preco}"),
                trailing: Container(
                  width: 120,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.remove_circle),
                          onPressed: () {
                            if (controller.produtos[index].quantidade == 1) {
                              controller.removerProduto(
                                  controller.produtos[index].produto);
                            } else {
                              controller.produtos[index].remover();
                            }
                          }),
                      Observer(
                        builder: (BuildContext context) {
                          return Expanded(
                              child: Text(
                            "${controller.produtos[index].quantidade}",
                            textAlign: TextAlign.center,
                          ));
                        },
                      ),
                      IconButton(
                          icon: Icon(Icons.add_circle),
                          onPressed: () {
                            controller.produtos[index].adicionar();
                          })
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
