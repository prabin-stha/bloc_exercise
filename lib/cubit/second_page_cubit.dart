import 'package:bloc/bloc.dart';

class SecondPageCubit extends Cubit<double> {
  SecondPageCubit() : super(0.0);

  void increment() {
    emit(state + 1.5);
  }

  void decrement() {
    emit(state - 1.5);
  }
}
