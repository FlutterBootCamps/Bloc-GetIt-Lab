import 'package:counter_lab/bloc/counter_number_bloc.dart';
import 'package:counter_lab/d/data_service.dart';
import 'package:counter_lab/service/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final serviceLocater = locater.get<DataService>();
  TextEditingController numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff79B4A3),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: numController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number"),
            ),
          ),
          BlocBuilder<CounterNumberBloc, CounterNumberState>(
            builder: (context, state) {
              if (state is CounterNumberState) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Center(child: Text("${serviceLocater.countNumber}")),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 221, 221)),
                );
              }
              return Text("error");
            },
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<CounterNumberBloc, CounterNumberState>(
            builder: (context, state) {
              if (state is CounterNumberState) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Center(child: Text("${serviceLocater.decreNum}")),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 224, 221, 221)),
                );
              }
              return Text("error");
            },
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(300, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {
              print("${numController}");
              BlocProvider.of<CounterNumberBloc>(context).add(
                  counteUserrNumberEvent(
                      userNumber: int.parse(numController.text)));
            },
            child: Text("count"),
          )
        ]),
      ),
    );
  }
}
