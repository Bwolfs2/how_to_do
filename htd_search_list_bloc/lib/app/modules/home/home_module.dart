import 'package:htd_search_list_bloc/app/modules/home/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_search_list_bloc/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
