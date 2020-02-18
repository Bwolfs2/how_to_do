import 'package:hwt_consume_future_api/app/modules/detail/detail_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hwt_consume_future_api/app/modules/detail/detail_page.dart';

class DetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailController()),
      ];

  @override
  List<Router> get routers => [
        Router('/',
            child: (_, args) => DetailPage(pokemon: args.data["pkm"])),
      ];

  static Inject get to => Inject<DetailModule>.of();
}
