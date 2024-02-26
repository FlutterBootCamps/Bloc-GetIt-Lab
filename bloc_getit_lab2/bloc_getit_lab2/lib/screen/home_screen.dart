import 'package:bloc_getit_lab2/bloc/services_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Number"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<ServicesBloc, ServicesState>(
              builder: (context, state) {
                if (state is CountState) {
                  return ContainerCounter(
                      number: state.number, count: state.counter);
                }
                return SizedBox();
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ServicesBloc>(context).add(
                      ShowCountEvent(number: int.parse(numberController.text)));
                },
                child: Text("Add")),
          ],
        ),
      )),
    );
  }
}

class ContainerCounter extends StatelessWidget {
  ContainerCounter({super.key, required this.number, required this.count});
  final int number;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.width * 0.30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("$count"),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.width * 0.30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("$number"),
        ),
      ],
    );
  }
}
