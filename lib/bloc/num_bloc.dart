import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:w5_s2_getit/models/counter.dart';
import 'package:w5_s2_getit/utils/servec.dart';

part 'num_event.dart';
part 'num_state.dart';

class NumBloc extends Bloc<NumEvent, NumState> {
   final settargetnumber = getIt.get<Counter>();
  NumBloc() : super(NumInitial()) {
    on<NumEvent>((event, emit) {});
    on<UpdateEvent>(
      (event, emit) {
        settargetnumber.setTargetNumber(event.input);
        emit(Updatetate(
            num: settargetnumber.count,
            update: settargetnumber.update));
      },
    );
  }
}
