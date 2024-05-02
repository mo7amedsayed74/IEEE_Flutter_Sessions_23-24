import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/api_session/api_cubit/api_cubit.dart';
import 'package:ieee_sessions/api_session/api_cubit/api_states.dart';

class APIScreen extends StatelessWidget {
  const APIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharactersCubit, CharacterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('API'),
            centerTitle: true,
          ),
          body: Center(
            child: state is GetSuccessState
                ? ListTile(
                    leading: Text(
                      BlocProvider.of<CharactersCubit>(context)
                          .characters[0]
                          .characterId
                          .toString(),
                    ),
                    title: Text(
                      BlocProvider.of<CharactersCubit>(context)
                          .characters[0]
                          .name
                          .toString(),
                    ),
                  )
                : state is GetLoadingState
                    ? const CircularProgressIndicator()
                    : const Text('error'),
          ),
        );
      },
    );
  }
}
