import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_8/cubit/cubit/filterBarCubit/bar_cubit.dart';
import 'package:flutter_application_8/details.dart';
import 'package:flutter_application_8/Screens/textfield.dart';
import 'package:flutter_application_8/Screens/radio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<FilterbarCubit, FilterbarState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < details.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<FilterbarCubit>()
                                    .selectedContainer(i);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color:
                                        context.read<FilterbarCubit>().index ==
                                                i
                                            ? Color.fromARGB(255, 246, 0, 33)
                                            : Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  details[i],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                switch (context.read<FilterbarCubit>().index) {
                  0 => Text(
                      "${details[context.read<FilterbarCubit>().index]} الطلبات "),
                  1 => Text(
                      " الطلبات ${details[context.read<FilterbarCubit>().index]}"),
                  2 => Text(
                      " الطلبات ${details[context.read<FilterbarCubit>().index]}"),
                  3 => Text(
                      " الطلبات ${details[context.read<FilterbarCubit>().index]}"),
                  _ => Text(
                      " الطلبات ${details[context.read<FilterbarCubit>().index]}"),
                },
                const SizedBox(
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const TextFieldVisibilty()));
                    },
                    child: const Text("To Next Page")),
              ],
            );
          },
        ),
      ),
    );
  }
}
