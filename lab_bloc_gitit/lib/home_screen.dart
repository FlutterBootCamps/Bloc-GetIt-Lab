import 'dart:io';

import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab_bloc_gitit/bloc/counter_bloc.dart';
import 'package:lab_bloc_gitit/data_layer/data_service.dart';
import 'package:lab_bloc_gitit/serviec/setup.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final serviceLocator = locator.get<DataService>();

    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              children: [
                TextField(
                    controller: numberController,
                    decoration: const InputDecoration(
                      label: Text("Enter Number"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    onSubmitted: (value) {
                      if (int.parse(numberController.text) > 10) {
                        serviceLocator.increasenumder = 0;
                        BlocProvider.of<CounterBloc>(context).add(
                            StartNumberEvent(
                                number: int.parse(numberController.text)));
                      }
                    }),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      if (serviceLocator.decreasenumder > 0) {
                        BlocProvider.of<CounterBloc>(context)
                            .add(ChangeNumberEvent());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade200,
                      padding: const EdgeInsets.all(12),
                    ),
                    child: const Text(
                      "Count",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    if (state is ShowChangeNumberState) {
                      return
                          // SizedBox(
                          //    width: MediaQuery.of(context).size.width * 0.2,
                          //   height: MediaQuery.of(context).size.width * 0.2,

                          //   child: Center(
                          //     child: CircleProgressBar(
                          //                 foregroundColor: Colors.blue,
                          //                 backgroundColor: Colors.black12,
                          //                 value: double.parse(serviceLocator.increasenumder.toString()),
                          //                 child: Center(
                          //                   child: AnimatedCount(
                          //                     count: double.parse(serviceLocator.increasenumder.toString()) ,
                          //                     unit: '%',
                          //                     duration: Duration(milliseconds: 200),
                          //                   ),
                          //                 ),
                          //               ),
                          //   ),
                          // );

                          Column(
                        children: [
                          const Text(
                            "remaining number: ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(138, 188, 170, 164),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.width * 0.2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber.shade200),
                            child: Text(
                              "${state.numDecrease}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    }
                    return Column(
                      children: [
                        const Text(
                          "Remaining number: ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(138, 188, 170, 164),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber.shade200,
                          ),
                          child: const Text(""),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    if (state is ShowChangeNumberState) {
                      return Column(
                        children: [
                          const Text(
                            "Completed number: ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(138, 188, 170, 164),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.width * 0.2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber.shade200,
                            ),
                            child: Text(
                              "${state.numIncrease}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Completed number: ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(138, 188, 170, 164),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber.shade200,
                          ),
                          child: const Text(""),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
