import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/pagamento/pages/pagamento_sucesso/pagamento_sucesso_controller.dart';

class PagamentoSucessoPage extends StatefulWidget {
  final String title;
  const PagamentoSucessoPage({Key key, this.title = "Pagamento Sucesso"})
      : super(key: key);

  @override
  _PagamentoSucessoPageState createState() => _PagamentoSucessoPageState();
}

class _PagamentoSucessoPageState
    extends ModularState<PagamentoSucessoPage, PagamentoSucessoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pagamento Finalizado com sucesso ${controller.model.nome}!!!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text("Continuar Comprando"),
              onPressed: () {
                Modular.to.popUntil(ModalRoute.withName("/"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
