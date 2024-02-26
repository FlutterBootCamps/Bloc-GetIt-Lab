import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_w5_day2_lab1/bloc/number_bloc.dart';
import 'package:flutter_w5_day2_lab1/screens/home_page.dart';
import 'package:flutter_w5_day2_lab1/utils/setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => NumberBloc(),
          child: HomePage(),
        ));
  }
}
