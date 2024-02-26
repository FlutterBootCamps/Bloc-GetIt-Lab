class DataServices {
  int countNum = 0;
  int decrementNum = 0; 

  void counterNumber(int inputNum) {
    if ( countNum != inputNum && inputNum > 10) {
      countNum++;
      decrementNum = inputNum - countNum; 
    }
  }
}
