import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/pagamento/pages/dados_pagamento/dados_pagamento_controller.dart';

class DadosPagamentoPage extends StatefulWidget {
  final String title;
  const DadosPagamentoPage({Key key, this.title = "Dados Pagamento"})
      : super(key: key);

  @override
  _DadosPagamentoPageState createState() => _DadosPagamentoPageState();
}

class _DadosPagamentoPageState
    extends ModularState<DadosPagamentoPage, DadosPagamentoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Cartao"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "CVV"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("Continuar"),
                onPressed: controller.proximo),
          ),
        ],
      ),
    );
  }
}
