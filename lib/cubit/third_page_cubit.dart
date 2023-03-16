import 'package:bloc/bloc.dart';

class ThirdPageCubit extends Cubit<String> {
  ThirdPageCubit() : super('');

  void change(String change) {
    emit(change);
  }
}
