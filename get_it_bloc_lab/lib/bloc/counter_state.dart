part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

// ignore: must_be_immutable
class NumberState extends CounterState{
    final int number;
  final int change;
  NumberState({required this.number,required this.change});
}


