import 'package:bloc_getit_lab2/data_layer/data_services.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

void setup() {
  locator.registerSingleton<DataServices>(DataServices());
}
