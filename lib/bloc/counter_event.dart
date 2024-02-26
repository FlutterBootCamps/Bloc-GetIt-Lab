part of 'counter_bloc.dart';

sealed class CounterEvent {}

class AddCounterEvent extends CounterEvent {
final int number;
AddCounterEvent(this.number);
}
