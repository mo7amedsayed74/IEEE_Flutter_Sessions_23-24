import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/state_management/counter.dart';
import 'package:ieee_sessions/state_management/counter_cubit/bloc_observer.dart';
import 'package:ieee_sessions/state_management/counter_cubit/cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counter(),
      ),
    );
  }
}
