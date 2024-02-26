part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class ShowResultCounter extends CounterState {
final int counter;
final int remaining;
ShowResultCounter(this.remaining,this.counter);


}
