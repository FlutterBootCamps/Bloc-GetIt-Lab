part of 'services_bloc.dart';

@immutable
sealed class ServicesState {}

final class ServicesInitial extends ServicesState {}

final class CountState extends ServicesState {
  final int number;
  final int counter;
  CountState({required this.counter, required this.number});
}
