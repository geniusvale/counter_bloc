part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int count;
  const CounterState(this.count);
}

class CounterInitial extends CounterState {
 const CounterInitial(super.count);
}
