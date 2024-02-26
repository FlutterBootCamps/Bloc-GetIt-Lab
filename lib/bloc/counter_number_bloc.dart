import 'package:bloc/bloc.dart';
import 'package:counter_lab/d/data_service.dart';
import 'package:counter_lab/service/setup.dart';
import 'package:meta/meta.dart';

part 'counter_number_event.dart';
part 'counter_number_state.dart';

class CounterNumberBloc extends Bloc<CounterNumberEvent, CounterNumberState> {
  final serviceLocate = locater.get<DataService>();
  CounterNumberBloc() : super(CounterNumberInitial()) {
    on<counteUserrNumberEvent>((event, emit) {
      serviceLocate.counterNumber(event.userNumber);

      emit(CounterUserNumberState(
          decNum: serviceLocate.decreNum, countNum: serviceLocate.countNumber));
    });
  }
}
