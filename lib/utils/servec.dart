import 'package:get_it/get_it.dart';

import 'package:w5_s2_getit/models/counter.dart';


final getIt =GetIt.instance;
void setup (){
  getIt.registerSingleton<Counter>(Counter());
}