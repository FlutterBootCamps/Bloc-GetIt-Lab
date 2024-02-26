import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gitit_bloc/bloc/services_event.dart';
import 'package:gitit_bloc/bloc/services_state.dart';
import 'package:gitit_bloc/data_services.dart';
import 'package:gitit_bloc/setup.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final DataServices dataServices = locator<DataServices>();

  ServicesBloc() : super(ServicesInitial()) {
    on<ServicesEvent>((event, emit) {
      if (event is IncrementEvent) {
        dataServices.counterNumber(event.inputNum);

        emit(CounterServicesInitial(
          
          increesNum: dataServices.decrementNum,
          countNum: dataServices.countNum,
        ));
      }
    });
  }
}