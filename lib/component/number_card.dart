import 'dart:math';

import 'package:counter_number/constent/colors_constent.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.number,
  });
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: colors[Random().nextInt(5)],
            borderRadius: BorderRadius.circular(50 * Random().nextDouble())),
        height: 100,
        width: 100,
        child: Center(
            child: Text("${number}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900))));
  }
}
