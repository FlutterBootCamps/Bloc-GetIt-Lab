class Data {
  int counter = 0;
  int change = 0; 

  void updateNumber(int number) {
   counter = number;
    if (counter != 0 && counter <= 10) {
    
      counter -= change;
      change++;
    }
  }
}
