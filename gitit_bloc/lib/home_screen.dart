import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitit_bloc/bloc/services_bloc.dart';
import 'package:gitit_bloc/bloc/services_event.dart';
import 'package:gitit_bloc/bloc/services_state.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _numberController = TextEditingController();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter a number'),
            ),
            SizedBox(height: 20),
            BlocBuilder<ServicesBloc, ServicesState>(
              builder: (context, state) {
                if (state is CounterServicesInitial) {
                  final int sum = int.tryParse(_numberController.text) ?? 0 - state.increesNum;
                  return Column(
                    children: [
                      Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Count: ${state.countNum}',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        color: Colors.green,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sum: $sum',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final int userNumber = int.tryParse(_numberController.text) ?? 0;
                BlocProvider.of<ServicesBloc>(context).add(IncrementEvent(inputNum: userNumber));
              },
              child: Text('INCREES'),
            ),
          ],
        ),
      ),
    );
  }
}
