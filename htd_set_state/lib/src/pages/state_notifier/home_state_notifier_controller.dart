import 'package:flutter/cupertino.dart';

class HomeStateNotifierController extends ValueNotifier<HomeState> {
  HomeStateNotifierController() : super(InitState());

  Future<void> getData() async {
    value = Loading();
    await Future.delayed(const Duration(seconds: 2));
    value = Loaded(data: List.generate(100, (index) => "Product $index"));
  }
}

abstract class HomeState {}

class InitState extends HomeState {}

class Loading extends HomeState {}

class Loaded extends HomeState {
  List<String> data;  
  Loaded({required this.data});
}
