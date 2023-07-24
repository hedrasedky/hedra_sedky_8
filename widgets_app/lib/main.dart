import 'package:flutter/material.dart';
import 'package:flutter_application_8/cubit/cubit/visibilitycubit/cubit/visibilty_cubit.dart';
import 'package:flutter_application_8/Screens/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit/filterBarCubit/bar_cubit.dart';
import 'cubit/cubit/radiocubit/radio_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => FilterbarCubit())),
        BlocProvider(create: ((context) => VisibiltyCubit())),
        BlocProvider(create: ((context) => RadioCubit())),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
