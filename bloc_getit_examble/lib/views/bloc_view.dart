import 'package:bloc_getit_examble/bloc/service_bloc.dart';
import 'package:bloc_getit_examble/data_layer/data_service.dart';
import 'package:bloc_getit_examble/services/setup.dart';
import 'package:bloc_getit_examble/views/widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocServiceView extends StatelessWidget {
  BlocServiceView({super.key});

  final TextEditingController controller = TextEditingController();
  final serviceLocater = locater.get<DataService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 251, 239, 253),
                    border: Border.all(color: Colors.grey)),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "number to add"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onSubmitted: (value) {
                    if (controller.text.isNotEmpty) {
                      if (int.parse(controller.text) > 10) {
                        serviceLocater.countingUp = 0;
                        BlocProvider.of<ServiceBloc>(context).add(
                            CountingDownNumberEvent(
                                number: int.parse(controller.text)));
                      } else {
                        showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Center(
                                  child:
                                      Text('enter any number grater then 10'),
                                ),
                              );
                            });
                      }
                    } else {
                      showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              title: Center(
                                child: Text('enter any number grater then 10'),
                              ),
                            );
                          });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<ServiceBloc, ServiceState>(
                builder: (context, state) {
                  if (state is ShowNumberState) {
                    return Column(
                      children: [
                        Containers(
                          countingUp: state.countingUp,
                          countingDown: state.countingDown,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (serviceLocater.countingDown == 0) {
                                showDialog<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const AlertDialog(
                                        title: Text(
                                            'you have finished enter another number to start again'),
                                      );
                                    });
                                controller.clear();
                              } else {
                                BlocProvider.of<ServiceBloc>(context)
                                    .add(AddNumberEvent());
                              }
                            },
                            child: const Text("submit")),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          )),
    );
  }
}
