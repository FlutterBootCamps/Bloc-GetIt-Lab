import 'package:bloc/bloc.dart';
import 'package:bloc_getit_examble/data_layer/data_service.dart';
import 'package:bloc_getit_examble/services/setup.dart';
import 'package:meta/meta.dart';

part 'service_event.dart';
part 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final serviceLocater = locater.get<DataService>();
  ServiceBloc() : super(ServiceInitial()) {
    on<ServiceEvent>((event, emit) {});
    on<FinishEvent>((event, emit) {});
    on<CountingDownNumberEvent>((event, emit) {
      serviceLocater.countingDown = event.number;
      emit(ShowNumberState(countingUp: serviceLocater.countingUp , countingDown: serviceLocater.countingDown ));
    });
    on<AddNumberEvent>((event, emit) { 
      serviceLocater.countingUpping();
      serviceLocater.countingDowning();
      emit(ShowNumberState(countingUp: serviceLocater.countingUp , countingDown: serviceLocater.countingDown ));
    });
  }
}
