import 'package:flutter/cupertino.dart';
import 'package:htd_login_page_navigation/app/shared/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final AuthStore _authStore;

  final pageController = PageController();

  @observable
  int selectedIndex = 0;

  _HomeBase(this._authStore);

  bool get isLogged => _authStore.isLogged;

  login() {
    _authStore.setLogged(false);
  }

  logoff() {
    _authStore.setLogged(true);
  }

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }
}
