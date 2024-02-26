import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:lab_bloc_gitit/data_layer/data_service.dart';
import 'package:lab_bloc_gitit/serviec/setup.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final ServiceLocator = locator.get<DataService>();

// late int number ;

  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<StartNumberEvent>((event, emit) {
      int number = event.number;
      ServiceLocator.decreasenumder = number;
      // ServiceLocator.number = number;
      
      emit(ShowChangeNumberState(numDecrease: number, numIncrease: 0));
    });

    on<ChangeNumberEvent>((event, emit) {
      ServiceLocator.increaseNum();
      ServiceLocator.decreaseNumb();
      int decreaseNumber = ServiceLocator.decreasenumder;
      int increaseNumber = ServiceLocator.increasenumder;

      emit(ShowChangeNumberState(
          numDecrease: decreaseNumber, numIncrease: increaseNumber));
    });
  }
}
