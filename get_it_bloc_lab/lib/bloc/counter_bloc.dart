import 'package:bloc/bloc.dart';
import 'package:get_it_bloc_lab/model/Data.dart';
import 'package:get_it_bloc_lab/utils/get_it.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final serviceLocator = locator.get<Data>();
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {});
    on<AddNumberEvent>(
      (event, emit) {
        serviceLocator.updateNumber(event.num);
        emit(NumberState(
            number: serviceLocator.counter,
            change: serviceLocator.change));
      },
    );
  }
}
