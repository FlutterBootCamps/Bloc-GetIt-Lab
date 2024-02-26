class DataServices {
  int numberCounter = 0;
  int decrees = 0;
  int counter = 0;

  void countNumber(int number) {
    numberCounter = number;
    if (numberCounter <= 10) {
      if (counter != numberCounter && numberCounter != 0) {
        counter++;
        decrees--;
        numberCounter += decrees;
      }
    }
  }
}
