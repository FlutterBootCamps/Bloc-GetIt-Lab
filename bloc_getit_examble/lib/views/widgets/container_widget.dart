import 'package:bloc_getit_examble/helper/extintion.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key, required this.countingUp, required this.countingDown});
  final int countingUp;
  final int countingDown;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: context.getHeight() / 8,
          width: context.getWidth() * 0.90,
          decoration: BoxDecoration(
              color: const Color.fromARGB(180, 233, 203, 220),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const Text(
                "the finishing time:",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text("$countingUp",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 92, 47, 120), fontSize: 25))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: context.getHeight() / 8,
          width: context.getWidth() * 0.90,
          decoration: BoxDecoration(
              color: const Color.fromARGB(180, 233, 203, 220),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "the needed time:",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text("$countingDown",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 92, 47, 120), fontSize: 25))
            ],
          ),
        ),
      ],
    );
  }
}
