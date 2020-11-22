import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'notifications_controller.g.dart';

@Injectable()
class NotificationsController = _NotificationsControllerBase
    with _$NotificationsController;

abstract class _NotificationsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
