import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

part 'module_g_controller.g.dart';

class ModuleGController = _ModuleGControllerBase with _$ModuleGController;

abstract class _ModuleGControllerBase with Store {
  _ModuleGControllerBase() {
    title = Uuid().v4();
  }

  @observable
  String title;
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
