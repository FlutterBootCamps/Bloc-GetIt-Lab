part of 'num_bloc.dart';

@immutable
sealed class NumEvent {}

class UpdateEvent extends NumEvent {
   int input;

  UpdateEvent({required this.input});
}
