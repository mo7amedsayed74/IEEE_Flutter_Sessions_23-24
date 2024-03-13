import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/state_management/counter_cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitialState());

  static CounterCubit get(context) => BlocProvider.of(context);


  int counter = 0;

  void onPressed(String op) {
    if (op == '+') {
      counter++;
    } else if (op == '-') {
      counter--;
    }
    emit(MinusState());
  }
}
