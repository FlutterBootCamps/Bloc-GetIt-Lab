part of 'service_bloc.dart';

@immutable
sealed class ServiceState {}

final class ServiceInitial extends ServiceState {}

final class ShowNumberState extends ServiceState {
  final bool isVisible = true;
  final int countingUp;
  final int countingDown;
  ShowNumberState({required this.countingUp, required this.countingDown});
}

final class FinishState extends ServiceState {}
