import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return sharedPreferences.setString(key, value);
    } else if (value is int) {
      return sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return sharedPreferences.setDouble(key, value);
    } else {
      throw ArgumentError("Unsupported type for SharedPreferences");
    }
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeData({required String key}) {
    return sharedPreferences.remove(key);
  }

  bool containKey({required String key}) {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> clearData() {
    return sharedPreferences.clear();
  }
}
