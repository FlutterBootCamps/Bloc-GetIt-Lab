part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class StartNumberEvent extends CounterEvent {
  int number;
  StartNumberEvent({required this.number});
}

class ChangeNumberEvent extends CounterEvent {}
