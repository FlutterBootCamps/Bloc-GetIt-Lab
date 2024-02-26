part of 'num_bloc.dart';

@immutable
sealed class NumState {}

final class NumInitial extends NumState {}
class Updatetate extends NumState{
    final int num;
  final int update;
  Updatetate({required this.update,required this.num});
}