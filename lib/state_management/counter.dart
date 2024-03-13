import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/state_management/counter_cubit/cubit.dart';
import 'package:ieee_sessions/state_management/counter_cubit/states.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        CounterCubit cubit = CounterCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    cubit.onPressed('-');
                  },
                  icon: const Icon(Icons.minimize),
                ),
                Text('${cubit.counter}'),
                IconButton(
                  onPressed: () {
                    cubit.onPressed('+');
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
