import 'package:vendas_faturamento/app/modules/vendas_faturamentos/vendas_faturamentos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vendas_faturamento/app/modules/vendas_faturamentos/vendas_faturamentos_page.dart';

class VendasFaturamentosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VendasFaturamentosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => VendasFaturamentosPage()),
      ];

  static Inject get to => Inject<VendasFaturamentosModule>.of();
}
