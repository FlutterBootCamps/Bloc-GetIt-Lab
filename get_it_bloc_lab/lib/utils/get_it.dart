import 'package:get_it/get_it.dart';
import 'package:get_it_bloc_lab/model/Data.dart';

final locator = GetIt.I;

void setUp(){
  locator.registerSingleton<Data>(Data());
}