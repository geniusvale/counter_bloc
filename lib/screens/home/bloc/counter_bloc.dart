import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(0)) {
    on<Increment>((event, emit) => emit(CounterState(state.count + 1)));

    on<Decrement>((event, emit) => emit(CounterState(state.count - 1)));

    on<Reset>((event, emit) => emit(const CounterInitial(0)));
  }
}
