import 'package:flutter/src/widgets/framework.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/status/status_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/status/status_page.dart';

class StatusModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StatusController()),
      ];

  static Inject get to => Inject<StatusModule>.of();

  @override
  // TODO: implement view
  Widget get view => StatusPage();
}
