import 'package:get_it/get_it.dart';
import 'package:lab_bloc_gitit/data_layer/data_service.dart';

final locator = GetIt.I;

void setup() {
  locator.registerSingleton<DataService>(DataService());
}
