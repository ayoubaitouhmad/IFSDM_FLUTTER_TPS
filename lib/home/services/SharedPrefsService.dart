import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const String keyIsAuthenticated = 'isAuthenticated';
  static const String keyUserEmail = 'userEmail';

  static Future<void> saveUser({required String name, required String email}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyIsAuthenticated, true);
    await prefs.setString(keyUserEmail, email);
  }

  static Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // or remove specific keys
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyIsAuthenticated) ?? false;
  }



  static Future<String?> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyUserEmail);
  }


}
