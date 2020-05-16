import 'package:compra_estoque_online/app/modules/compra_estoque_online/compra_estoque_online_module.dart';
import 'package:controle_financeiro/app/modules/controle_financeiro/controle_financeiro_module.dart';
import 'package:controle_patrimonial/app/modules/controle_patrimonial/controle_patrimonial_module.dart';
import 'package:crm/app/modules/crm/crm_module.dart';
import 'package:gestao_compras/app/modules/gestao_compras/gestao_compras_module.dart';
import 'package:gestao_projetos/app/modules/gestao_projetos/gestao_projetos_module.dart';
import 'package:htd_main_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:htd_main_app/app/app_widget.dart';
import 'package:htd_main_app/app/modules/home/home_module.dart';
import 'package:login/app/modules/login/login_module.dart';
import 'package:vendas_faturamento/app/modules/vendas_faturamentos/vendas_faturamentos_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/login", module: LoginModule()),
        Router("/compra_estoque_online", module: CompraEstoqueOnlineModule()),
        Router("/controle_financeiro", module: ControleFinanceiroModule()),
        Router("/controle_patrimonial", module: ControlePatrimonialModule()),
        Router("/crm", module: CrmModule()),
        Router("/gestao_compras", module: GestaoComprasModule()),
        Router("/gestao_projetos", module: GestaoProjetosModule()),
        Router("/vendas_faturamento", module: VendasFaturamentosModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
