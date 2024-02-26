class Counter{
  int count =0;
  int update =0;



  void setTargetNumber(int number) {
   count = number;
    if (count != 0  &&  count  <= 10) {
    
      count -= update;
          update++;
    }
  }
}




