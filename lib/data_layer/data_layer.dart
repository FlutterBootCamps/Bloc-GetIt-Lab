class Counter {
  int counter = 0;
  int remaining = 0;
  void setNumber(int a) {
    if (a - counter > 0) {
      counter = counter + 1;
      remaining = a - counter;
    } else if (remaining == 0) {
      counter = 0;
    }
  }
}
