import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_get_own_module/app/modules/shared/some_interface.dart';

part 'second_controller.g.dart';

@Injectable()
class SecondController = _SecondControllerBase with _$SecondController;

abstract class _SecondControllerBase with Store {
  final ISome some;

  _SecondControllerBase(this.some);

  void printSome() {
    some.printSomething();
  }
}
