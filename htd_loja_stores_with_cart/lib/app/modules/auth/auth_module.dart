import 'package:htd_loja_store/app/modules/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_loja_store/app/modules/auth/auth_page.dart';
import 'package:htd_loja_store/app/shared/stores/auth/auth_store.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AuthController(i.get<AuthStore>()),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AuthPage()),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
