import 'package:bloc/bloc.dart';
import 'app_state.dart';

class AppBloc extends Cubit<AppState> {
  AppBloc() : super(InitialAppState());
}
