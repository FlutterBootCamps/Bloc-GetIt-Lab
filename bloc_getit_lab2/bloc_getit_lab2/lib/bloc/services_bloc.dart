import 'package:bloc/bloc.dart';
import 'package:bloc_getit_lab2/data_layer/data_services.dart';
import 'package:bloc_getit_lab2/setup/setup.dart';
import 'package:meta/meta.dart';

part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final serviceLocator = locator.get<DataServices>();

  ServicesBloc() : super(ServicesInitial()) {
    on<ServicesEvent>((event, emit) {});

    on<ShowCountEvent>((event, emit) {
      serviceLocator.countNumber(event.number);
      emit(CountState(
          counter: serviceLocator.counter,
          number: serviceLocator.numberCounter));
    });
  }
}
