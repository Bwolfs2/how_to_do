import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:hwt_hasura_filter_stream/app/modules/home/model/product.dart';
import 'package:uuid/uuid.dart';

class HomeRepository extends Disposable {
  final HasuraConnect hasuraConnect;

  HomeRepository(this.hasuraConnect);

  Snapshot<List<Product>> fetchPost(String desc) {
    var subscript = r'''
    subscription product_subscription($description: String!) {
      product(where: {description: {_similar: $description}}) {
        id
        name
        description
        bar_code
      }
    }''';

    return hasuraConnect.subscription(subscript,
        /* key: Uuid().v4(),*/ variables: {
          "description": "%$desc%"
        }).convert<List<Product>>(
        (json) => json["data"] == null
            ? []
            : Product.fromJsonList(json["data"]["product"]),
        cachePersist: (data) => {"data": null});
  }

  @override
  void dispose() {}
}
