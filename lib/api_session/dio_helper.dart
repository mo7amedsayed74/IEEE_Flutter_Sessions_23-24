import 'package:dio/dio.dart';
import 'package:ieee_sessions/api_session/auth_cubit/endpoints.dart';

class DioHelper {
  //Dio dio = Dio(BaseOptions(baseUrl: EndPoints.baseUrl));
  static late Dio dio;
  static late int x;
  static void init() {
    x=5;

    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
      ),
    );
  }
}
