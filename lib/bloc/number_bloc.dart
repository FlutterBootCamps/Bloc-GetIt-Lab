import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_w5_day2_lab1/data_layer/home_data_layer.dart';
import 'package:meta/meta.dart';
import 'package:get_it/get_it.dart';
part 'number_event.dart';
part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  final serviceLocator = GetIt.I.get<HomeData>();
  NumberBloc() : super(NumberInitial()) {
    on<NumberEvent>((event, emit) {

    });
    on<SetCounterEvent>(setCounter);
    on<CountEvent>(count);
  }

  FutureOr<void> setCounter(SetCounterEvent event, Emitter<NumberState> emit) {
    serviceLocator.setCounter(event.numberCount);
    emit(CountingState(counter: serviceLocator.counter, numberCounting: serviceLocator.numberCounting));
  }

  FutureOr<void> count(CountEvent event, Emitter<NumberState> emit) {
    serviceLocator.countNumber();
    emit(CountingState(counter: serviceLocator.counter, numberCounting: serviceLocator.numberCounting));
  }
}
