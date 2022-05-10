import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_do_bloc_scoped/src/repository/my_repository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MyRepository repository;

  HomeBloc(this.repository) : super(InitialHomeState()) {
    on<InitialHomeEvent>((state, emit) async {
      emit(LoadingHomeState());
      var result = await repository.get();
      emit(LoadedHomeState(result));
    });
  }

  @override
  Future<void> close() {
    print('Disposou');
    return super.close();
  }
}

//Event
abstract class HomeEvent {}

class HomeEventLoad extends HomeEvent {}

class InitialHomeEvent extends HomeEvent {}

class LoadedHomeEvent extends HomeEvent {}

///State
abstract class HomeState {}

class InitialHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}

class LoadedHomeState extends HomeState {
  final List<String> data;

  LoadedHomeState(this.data);
}
