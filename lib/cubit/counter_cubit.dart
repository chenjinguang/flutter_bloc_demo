import 'package:bloc/bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState().init());

  void increase() => emit(state.clone()..count = ++state.count);
}
