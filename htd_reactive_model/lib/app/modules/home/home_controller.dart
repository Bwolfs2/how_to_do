import 'package:htd_reactive_model/app/modules/home/models/user_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  UserStore user = UserStore();
}
