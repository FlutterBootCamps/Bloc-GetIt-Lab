import 'package:bloc/bloc.dart';
import 'package:counter_number/data_layer/data_layer.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import 'counter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    final getIt=GetIt.I.get<Counter>();
    on<CounterEvent>((event, emit) {
    });

        on<AddCounterEvent>((event, emit) {
                      getIt.setNumber(event.number);
                    print("///////////");
          print(getIt.remaining);
          print(getIt.counter);

          emit(ShowResultCounter(getIt.remaining,getIt.counter));

    });
  }
}
