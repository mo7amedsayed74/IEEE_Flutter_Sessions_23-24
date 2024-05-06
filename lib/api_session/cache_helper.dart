import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
 static late SharedPreferences sharedPreferences;

 static void init()async{
   sharedPreferences = await SharedPreferences.getInstance();
 }
}