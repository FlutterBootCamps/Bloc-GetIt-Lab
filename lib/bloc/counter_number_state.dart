part of 'counter_number_bloc.dart';

@immutable
sealed class CounterNumberState {}

final class CounterNumberInitial extends CounterNumberState {}

final class CounterUserNumberState extends CounterNumberState {
  int countNum;
  int decNum;
  CounterUserNumberState({required this.countNum, required this.decNum});
}
