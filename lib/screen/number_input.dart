
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w5_s2_getit/bloc/num_bloc.dart';


import '../widget/number_count.dart';

class NumberInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  NumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
     Column(
      
        children: <Widget>[
          Center(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter a number',
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
             onPressed: () {
                      BlocProvider.of<NumBloc>(context)
                          .add(UpdateEvent(input: int.parse(_controller.text)));
            },
            child: Text('Start Counting'),
          ),
          BlocBuilder<NumBloc, NumState>(
            builder: (context, state) {
              if (state is Updatetate) {
                return NumberCount(num: state.num, update: state.update,);
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
