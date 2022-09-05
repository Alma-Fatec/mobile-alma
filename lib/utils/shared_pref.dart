import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<bool> save(String key, dynamic value) async {
    final _prefs = await SharedPreferences.getInstance();
    return await _prefs.setString(key, value);
  }

  Future read(String key) async {
    final _prefs = await SharedPreferences.getInstance();
    return _prefs.get(key);
  }

  Future<void> remove(String key) async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.remove(key);
  }

  Future<bool> constain(String key) async {
    final _prefs = await SharedPreferences.getInstance();
    return _prefs.containsKey(key);
  }
}
