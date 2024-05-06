import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_sessions/api_session/auth_cubit/auth_states.dart';
import 'package:ieee_sessions/api_session/auth_cubit/endpoints.dart';
import 'package:ieee_sessions/api_session/dio_helper.dart';
import 'package:ieee_sessions/api_session/models/login_model.dart';


class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(InitialState());



  void login() async {
    emit(LoginLoadingState());
    try {
      Response response =  await DioHelper.dio.post(
        EndPoints.login,
        data: {
          "email": "mohammedsayed7414@gmail.com",
          "password": "123456",
        },
      );
      //print(response.statusCode);
      //print(response.data);
      LoginModel loginModel = LoginModel.fromJson(response.data);
      //prefs.setString('token', response.data['data']['token']);
      //CacheHelper.sharedPreferences.setString('token', loginModel.date!.token);
      emit(LoginSuccessState());
    } catch (error) {
      print(error.toString());
      emit(LoginErrorState());
    }
  }

  void logout() async {
    emit(LoginLoadingState());
    try {
      DioHelper.dio.post(
        EndPoints.logout,
        options: Options(
          headers: {
            'Authorization':
                '7PFOsIK6WttkiV4oSEctskzifhqhn8vOwKo9UrcETQ4malRJ8Cfom9uNDg611rBFjPvvbK',
          },
        ),
      );
      emit(LoginSuccessState());
    } catch (error) {
      print(error.toString());
      emit(LoginErrorState());
    }
  }
}
