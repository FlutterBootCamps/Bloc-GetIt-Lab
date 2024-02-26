part of 'services_bloc.dart';

@immutable
sealed class ServicesEvent {}

final class ShowCountEvent extends ServicesEvent{
  final int number;
  ShowCountEvent({required this.number});
}