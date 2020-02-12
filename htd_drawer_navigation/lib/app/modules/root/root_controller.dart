import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_drawer_navigation/app/modules/home/home_module.dart';
import 'package:mobx/mobx.dart';

part 'root_controller.g.dart';

class RootController = _RootBase with _$RootController;

abstract class _RootBase with Store {
  @observable
  ModuleCallback selectedPage = () => HomeModule();//Inicia com a Home // Starts with Home

  //Troca a Page conforme o ModuleCallback
  @computed
  set changePage(ModuleCallback page) => selectedPage = page;
}

//Aqui eu criei um Lazy da Module, e esse module soh é carregado na Tela/RootPage
typedef ModuleWidget ModuleCallback();
