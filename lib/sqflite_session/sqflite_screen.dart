import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/sqflite_session/cubit/cubit.dart';
import 'package:ieee_sessions/sqflite_session/cubit/states.dart';

class SqfliteScreen extends StatelessWidget {
  const SqfliteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoCubit,ToDoStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: const Text('SqfLite session'),
          ),
        );
      },
    );
  }
}
