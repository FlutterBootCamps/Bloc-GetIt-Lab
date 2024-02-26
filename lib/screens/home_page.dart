import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_w5_day2_lab1/bloc/number_bloc.dart';
import 'package:flutter_w5_day2_lab1/data_layer/home_data_layer.dart';
import 'package:get_it/get_it.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("NumberCounter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              decoration: const InputDecoration(
                  label: Text("Number to count"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
            BlocBuilder<NumberBloc, NumberState>(
              builder: (context, state) {
                if (state is CountingState) {
                  return Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    NumberContainer(
                      label: "Counter",
                      value: state.counter,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    NumberContainer(
                      label: "Number Counting",
                      value: state.numberCounting,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                );
                } else {
                return const Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    NumberContainer(
                      label: "Counter",
                      value: 0,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    NumberContainer(
                      label: "Number Counting",
                      value: 0,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                );
              }
              }
            ),
            ElevatedButton(
              onPressed: () {
                if (GetIt.I.get<HomeData>().isCounting){
                  context.read<NumberBloc>().add(CountEvent());
                }else {
                  context.read<NumberBloc>().add(SetCounterEvent(numberCount: int.parse(numberController.text)));
                }
                
              },
              child: const Text("Count"),
            )
          ],
        ),
      ),
    );
  }
}

class NumberContainer extends StatelessWidget {
  const NumberContainer({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(20)),
          child: Text(value.toString()),
        ),
      ],
    );
  }
}
