import 'package:flutter/material.dart';

class CarrinhoListaProdutosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 6,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.all(5),
          child: ListTile(
              leading: CircleAvatar(
                child: Text("P$index"),
              ),
              title: Text("Produto $index"),
              trailing: Text("R\$ ${3 * index}")),
        );
      },
    );
  }
}
