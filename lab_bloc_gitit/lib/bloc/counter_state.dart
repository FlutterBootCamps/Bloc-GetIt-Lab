part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class ShowChangeNumberState extends CounterState {
  int numIncrease;
  int numDecrease;

  ShowChangeNumberState({required this.numIncrease, required this.numDecrease});
}
