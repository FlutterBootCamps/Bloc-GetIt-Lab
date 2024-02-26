import 'package:counter_number/data_layer/data_layer.dart';
import 'package:get_it/get_it.dart';

setup() {
  GetIt.I.registerSingleton<Counter>(Counter());
}
