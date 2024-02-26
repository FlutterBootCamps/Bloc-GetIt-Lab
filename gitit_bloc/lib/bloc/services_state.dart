import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ServicesState {}

class ServicesInitial extends ServicesState {
  
}

final class CounterServicesInitial extends ServicesInitial {


  int increesNum;
  
  int countNum;
  CounterServicesInitial({required this.countNum, required this.increesNum});
}