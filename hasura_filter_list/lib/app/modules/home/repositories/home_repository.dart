import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_filter_list/app/modules/home/models/product_model.dart';

class HomeRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  HomeRepository(this._hasuraConnect);

  Snapshot<List<ProductModel>> getProduto() {
    var query = r'''
                subscription getProdutos($filter: String) {
                  produto(where: {nome: {_ilike: $filter}}) {
                    id
                    nome
                    valor
                  }
                }
              ''';

    return _hasuraConnect
        .subscription(query, variables: {"filter": "%%"}).convert(
      (json) {
        return ProductModel.fromJsonList(json['data']['produto']);

        // var data = json['data'];
        // var messages = data['produto'] as List;
        // var list = messages.map((e) => ProductModel.fromJson(e)).toList();
        // return list;
      },
      cachePersist: (obj) {
        return {
          "data": {
            "produto": obj.map((e) => e.toJson()).toList(),
          }
        };
      },
    );
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
