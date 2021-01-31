import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<double> {
  CounterCubit() : super(1.20);

  void increment() => emit(state + .1);

  void decrement() {
    if (state > 1.2) emit(state - .1);
  }
}
