import 'dart:math';

import 'package:counter_number/bloc/counter_bloc.dart';
import 'package:counter_number/constent/colors_constent.dart';
import 'package:counter_number/data_layer/data_layer.dart';
import 'package:counter_number/component/number_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePageBloc extends StatelessWidget {
  HomePageBloc({super.key});

  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey.shade500,
        appBar: AppBar(backgroundColor: Colors.transparent,
          title: Text("عداد يدوي"),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: number,
                  decoration:
                      InputDecoration(hintText: "enter number greter than 10",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),filled: true,fillColor: Colors.white70),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
                child: BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    print(state.toString());
                    if (state is ShowResultCounter) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            NumberCard(number: state.counter),
                            SizedBox(
                              height: 20,
                            ),
                            NumberCard(number: state.remaining),
                          ],
                        ),
                      );
                    } else
                      return Container();
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (int.parse(number.text) >= 10) {
                      BlocProvider.of<CounterBloc>(context)
                          .add(AddCounterEvent(int.parse(number.text)));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 8),
                          backgroundColor: Colors.red,
                          content:
                              Text("الرقم الذي ادخلته اقل او لا يساوي 10")));
                    }
                  },
                  child: Text("click"))
            ],
          ),
        ));
  }
}