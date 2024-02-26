import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_bloc_lab/bloc/counter_bloc.dart';
import 'package:get_it_bloc_lab/main_page.dart';
import 'package:get_it_bloc_lab/utils/get_it.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
