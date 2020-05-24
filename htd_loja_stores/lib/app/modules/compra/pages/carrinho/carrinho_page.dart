import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/compra/pages/carrinho/widgets/carrinho_lista_produtos/carrinho_lista_produtos_widget.dart';
import 'package:htd_loja_store/app/modules/compra/pages/carrinho/widgets/carrinho_total/carrinho_total_widget.dart';
import 'carrinho_controller.dart';

class CarrinhoPage extends StatefulWidget {
  final String title;
  const CarrinhoPage({Key key, @required this.title}) : super(key: key);

  @override
  _CarrinhoPageState createState() => _CarrinhoPageState();
}

class _CarrinhoPageState
    extends ModularState<CarrinhoPage, CarrinhoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de Compras"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CarrinhoListaProdutosWidget(),
            Divider(),
            CarrinhoTotalWidget(),
            Divider(),
            Container(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Modular.to.pushNamed("/pagamento");
                },
                child: Text("Ir para Pagamento"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
