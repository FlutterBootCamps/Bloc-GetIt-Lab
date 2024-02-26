part of 'service_bloc.dart';

@immutable
sealed class ServiceEvent {}

class CountingDownNumberEvent extends ServiceEvent {
  final int number;

  CountingDownNumberEvent({required this.number});
}

class AddNumberEvent extends ServiceEvent {}

class FinishEvent extends ServiceEvent {}

