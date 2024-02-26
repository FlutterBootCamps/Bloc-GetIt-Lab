part of 'number_bloc.dart';

@immutable
sealed class NumberEvent {}

final class SetCounterEvent extends NumberEvent {
  final int numberCount;

  SetCounterEvent({required this.numberCount});
}

final class CountEvent extends NumberEvent {
  
}