import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_get_own_module/app/modules/shared/some_interface.dart';

part 'first_controller.g.dart';

@Injectable()
class FirstController = _FirstControllerBase with _$FirstController;

abstract class _FirstControllerBase with Store {
  final ISome some;

  _FirstControllerBase(this.some);

  void printSome() {
    some.printSomething();
  }
}
