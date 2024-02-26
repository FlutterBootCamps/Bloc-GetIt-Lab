part of 'counter_number_bloc.dart';

@immutable
sealed class CounterNumberEvent {}

final class counteUserrNumberEvent extends CounterNumberEvent {
  int userNumber;
  counteUserrNumberEvent(
 {required this.userNumber});
}
