part of 'number_bloc.dart';

@immutable
sealed class NumberState {}

final class NumberInitial extends NumberState {}

final class CountingState extends NumberState {
  final int counter;
  final int numberCounting;

  CountingState({required this.counter, required this.numberCounting});
}