import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async{
    if(value is bool){
      return await sharedPreferences!.setBool(key, value);
    }else if(value is String){
      return await sharedPreferences!.setString(key, value);
    }else if(value is int){
      return await sharedPreferences!.setInt(key, value);
    }else if(value is double){
      return await sharedPreferences!.setDouble(key, value);
    }else{
      return await sharedPreferences!.setStringList(key, value); //value is List<String>
    }
  }

  static dynamic getData({required String key}){
    return sharedPreferences!.get(key);
  }


  static bool? getBooleanAppMode({
    required String key,
  }) {
    return sharedPreferences!.getBool(key);
  }

  static Future<bool> remove({required String key})async{
    return await sharedPreferences!.remove(key);
  }

  static Future<bool> clearData()async{
    return await sharedPreferences!.clear();
  }

}
