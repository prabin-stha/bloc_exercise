import 'package:bloc_navigation/features/homepage/presentation/cubit/home_cubit_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  HomeCubit() : super(HomeState(0));

  void increment() {
    emit(HomeState(state.count + 1));
  }

  void decrement() {
    emit(HomeState(state.count + 1));
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    return HomeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return state.toMap();
  }
}
