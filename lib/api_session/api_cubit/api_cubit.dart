import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/api_session/api_cubit/api_states.dart';

class CharactersCubit extends Cubit<CharacterStates> {
  CharactersCubit() : super(InitialState());

  late List<CharacterModel> characters;

  // https://rickandmortyapi.com/api/character

  void getAllCharacters() async {
    emit(GetLoadingState());
    try {
      //Dio().get('https://rickandmortyapi.com/api/character');
      Response response =
          await Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com/api/'))
              .get('character');

      /// response has [ status code , Body(data) ]
      //print(response.statusCode);
      //print(response.data);

      //print(response.data['results'][0]['origin']['name']);
      //print(response.data['results'][0]['name']);

      // response.data['results'] >> List<Map<String,dynamic>>
      //List<dynamic> results = response.data['results'];

      /// mapping results to List<CharacterModel>
      //characters = results.map((element) => CharacterModel.fromJson(element)).toList();
      characters = response.data['results'].map<CharacterModel>((element) => CharacterModel.fromJson(element)).toList();

      /// test after mapping
      print(characters[4].name);
      print(characters[4].gender);
      print(characters[4].characterId);

      emit(GetSuccessState());
    } catch (error) {
      print(error.toString());
      emit(GetErrorState());
    }
  }
}

/*

{
      "id": 1,
      "name": "Rick Sanchez",
      "status": "Alive",
      "species": "Human",
      "type": "",
      "gender": "Male",
      "origin": {
        "name": "Earth (C-137)",
        "url": "https://rickandmortyapi.com/api/location/1"
      },
}

 */

class CharacterModel {
  late int characterId;
  late String name;
  late String status;
  late String gender;

  // named constructor
  CharacterModel.fromJson(Map<String, dynamic> json) {
    characterId = json['id'];
    name = json['name'];
    status = json['status'];
    gender = json['gender'];
  }
}
