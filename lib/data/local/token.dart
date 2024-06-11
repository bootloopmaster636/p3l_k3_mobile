import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setToken(String token) async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  } catch (e) {
    Logger().e(e.toString());
    rethrow;
  }
}

Future<String?> getToken() async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  } catch (e) {
    Logger().e(e.toString());
    rethrow;
  }
}
