import 'package:mobx/mobx.dart';

part 'other_module_controller.g.dart';

class OtherModuleController = _OtherModuleControllerBase
    with _$OtherModuleController;

abstract class _OtherModuleControllerBase with Store {
  final String parameterParams;
  final String parameterData;

  _OtherModuleControllerBase({this.parameterParams, this.parameterData}) {
    fill();
  }

  @observable
  String params;

  @observable
  String data;

  @action
  void fill() {
    params = parameterParams;
    data = parameterData;
  }
}
