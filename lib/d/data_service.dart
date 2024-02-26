import 'package:flutter/material.dart';

class DataService {
  int countNumber = 0;
  int decreNum = 0;
  void counterNumber(int userNum) {
    if (userNum > 10 && countNumber != userNum) {
      decreNum = userNum;
      countNumber++;
      decreNum = decreNum - countNumber;
    }
  }
}
