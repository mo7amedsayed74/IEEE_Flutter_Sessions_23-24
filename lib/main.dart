import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/async_session/cache_helper.dart';
import 'package:ieee_sessions/beginner_sessions/login_screen.dart';
import 'package:ieee_sessions/sqflite_session/cubit/cubit.dart';
import 'package:ieee_sessions/sqflite_session/sqflite_screen.dart';
import 'package:ieee_sessions/state_management/counter_cubit/bloc_observer.dart';
import 'package:ieee_sessions/state_management/counter_cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider( // lazy
          create: (context) => ToDoCubit()..createDB(),// cascade
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SqfliteScreen(),
      ),
    );
  }
}
