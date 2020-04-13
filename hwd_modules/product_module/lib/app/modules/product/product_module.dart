import 'package:product_module/app/modules/product/product_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_module/app/modules/product/product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProductPage()),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
