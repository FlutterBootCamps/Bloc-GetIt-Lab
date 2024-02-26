import 'package:bloc_getit_examble/bloc/service_bloc.dart';
import 'package:bloc_getit_examble/services/setup.dart';
import 'package:bloc_getit_examble/views/bloc_view.dart';
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
        create: (context) => ServiceBloc(),
        child: MaterialApp(
          home: BlocServiceView(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
