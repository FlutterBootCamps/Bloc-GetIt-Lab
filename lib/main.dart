import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w5_s2_getit/bloc/num_bloc.dart';
import 'package:w5_s2_getit/utils/servec.dart';

import 'screen/number_input.dart';

void main() {
  setup(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NumBloc(),
      child: MaterialApp(
        home: NumberInput(),
      ),
    );
  }
}