import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ServicesEvent {}

final class IncrementEvent extends ServicesEvent {
  int inputNum;
  IncrementEvent(
 {required this.inputNum});
}