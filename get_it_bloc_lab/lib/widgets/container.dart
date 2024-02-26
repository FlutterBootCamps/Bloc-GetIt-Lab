import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.number, required this.change});
  final int number;
  final int change;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(number.toString()),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(change.toString()),
          ),
        ),
      ],
    );
  }
}
