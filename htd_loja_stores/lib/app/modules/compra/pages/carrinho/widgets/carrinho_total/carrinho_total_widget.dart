import 'package:flutter/material.dart';

class CarrinhoTotalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Carrinho:"),
              Text("R\$ 120,00"),
            ],
          )
        ],
      ),
    );
  }
}
