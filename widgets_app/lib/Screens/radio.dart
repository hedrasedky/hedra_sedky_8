import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_8/details.dart';

import '../cubit/cubit/radiocubit/radio_cubit.dart';

class RadioButtonScreen extends StatelessWidget {
  const RadioButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RadioCubit cubit = context.read<RadioCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<RadioCubit, RadioState>(
          builder: (context, state) {
            return Column(
              children: [
                for (int i = 0; i < 20; i++)
                  Radio(
                      value: numbers[i],
                      groupValue: cubit.radioIndex,
                      onChanged: (value) {
                        cubit.radioIndex = value!;
                        cubit.radioSelected();
                      })
              ],
            );
          },
        ),
      ),
    );
  }
}
