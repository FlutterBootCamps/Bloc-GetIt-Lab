import 'package:get_it/get_it.dart';

class HomeData {

  final locator = GetIt.I;
  int counter = 0;
  int numberCounting = 0;
  int currentCountNumber = 0;
  bool isCounting = false;

  void setCounter(int number) {
    if (!isCounting && number >= 10) {
      counter = 0;
      numberCounting = number;
      currentCountNumber = number;
      isCounting = true;
    }
  }

  void countNumber() {
    if (counter != currentCountNumber && numberCounting != 0 && isCounting) {
      counter++;
      numberCounting--;
    } else {
      isCounting = false;
    }
  }
}
