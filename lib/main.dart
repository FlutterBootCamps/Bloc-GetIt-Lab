import 'package:counter_lab/bloc/counter_number_bloc.dart';
import 'package:counter_lab/pages/home_page.dart';
import 'package:counter_lab/service/setup.dart';
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
    return BlocProvider(
      create: (context) => CounterNumberBloc(),
      child: MaterialApp(home: HomePage()),
    );
  }
}
