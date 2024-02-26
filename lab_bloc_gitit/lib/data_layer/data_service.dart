class DataService {
  late int number;
  int increasenumder = 0;
  int decreasenumder = 0;

  void increaseNum() {
    increasenumder++;
    print("increase $increasenumder");
  }

  void decreaseNumb() {
    if (decreasenumder > 0) {
      decreasenumder -= 1;
      print("dec $decreasenumder");
    }
  }
}
