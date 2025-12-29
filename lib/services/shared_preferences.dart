import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isFirstLaunch() async {
  final prefs = await SharedPreferences.getInstance();
  final firstLaunch = prefs.getBool('first_launch') ?? true;

  if (firstLaunch) {
    await prefs.setBool('first_launch', false);
  }

  return firstLaunch;
}