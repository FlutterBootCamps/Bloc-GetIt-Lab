import 'package:flutter/material.dart';

class NumberCount extends StatelessWidget {
  const NumberCount({super.key, required this.num, required this.update});
  final int num;
  final int update;
  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
          SizedBox(height: 30),
        Container(
          height: 50,
          width: 200,
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Text(num.toString()),
          ),
        ),
        Container(
                    height: 50,
          width: 200,
          color: Colors.deepPurpleAccent,
          child: Center(
            child: Text(update.toString()),
          ),
        ),
        
      ],
    );
  }
}
