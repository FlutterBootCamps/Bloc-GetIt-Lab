import 'package:counter_number/bloc/counter_bloc.dart';
import 'package:counter_number/bloc/page/home_page.dart';
import 'package:counter_number/component/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) => CounterBloc(),
      child: HomePageBloc(),
    ));
  }
}
