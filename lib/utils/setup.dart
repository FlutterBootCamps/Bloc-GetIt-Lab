import 'package:flutter_w5_day2_lab1/data_layer/home_data_layer.dart';
import 'package:get_it/get_it.dart';

void setup(){
  GetIt.I.registerSingleton<HomeData>(HomeData());
}