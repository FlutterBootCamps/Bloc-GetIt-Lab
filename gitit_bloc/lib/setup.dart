import 'package:get_it/get_it.dart';
import 'package:gitit_bloc/data_services.dart';

final locator = GetIt.I;

void setup() {
  locator.registerSingleton<DataServices>(DataServices());
  
}
