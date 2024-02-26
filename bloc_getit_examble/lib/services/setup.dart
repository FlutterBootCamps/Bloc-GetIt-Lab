import 'package:bloc_getit_examble/data_layer/data_service.dart';
import 'package:get_it/get_it.dart';


// create the instance of Get it

final locater = GetIt.I;

// create set up method

void setup(){
  locater.registerSingleton<DataService>(DataService());
}