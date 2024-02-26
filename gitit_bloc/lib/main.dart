import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitit_bloc/bloc/services_bloc.dart';
import 'package:gitit_bloc/home_screen.dart';
import 'package:gitit_bloc/setup.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ServicesBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
