import 'package:counter_lab/d/data_service.dart';
import 'package:get_it/get_it.dart';

final locater = GetIt.I;

void setup() {
  locater.registerSingleton<DataService>(DataService());
}
