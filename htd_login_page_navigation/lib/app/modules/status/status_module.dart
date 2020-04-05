import 'package:flutter/src/widgets/framework.dart';
import 'package:htd_login_page_navigation/app/modules/status/status_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_login_page_navigation/app/modules/status/status_page.dart';

class StatusModule extends ModuleWidget {
  @override
  List<Bind> get binds => [
        Bind((i) => StatusController()),
      ];

  static Inject get to => Inject<StatusModule>.of();

  @override
  // TODO: implement view
  Widget get view => StatusPage();
}
