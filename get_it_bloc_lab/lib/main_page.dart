import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_bloc_lab/bloc/counter_bloc.dart';
import 'package:get_it_bloc_lab/widgets/container.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  label: Text("Add Number"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(AddNumberEvent(num: int.parse(controller.text)));
                  },
                  child: const Text("Add number")),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is NumberState) {
                    return ContainerWidget(
                      number: state.number,
                      change: state.change,
                    );
                  } else {
                    return Text("Null");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
