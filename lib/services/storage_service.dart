import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static Future<void> saveStreak(int streak) async {
    final prefs = await SharedPreferences.getInstance();
    bool result = await prefs.setInt('streak', streak);
    print("SAVE STREAK RESULT: $result");
  }

  static Future<int> loadStreak() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('streak') ?? 7;
  }

  static Future<void> saveCoins(int coins) async {
    final prefs = await SharedPreferences.getInstance();
    bool result = await prefs.setInt('coins', coins);
    print("SAVE COINS RESULT: $result");
  }

  static Future<int> loadCoins() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('coins') ?? 350;
  }
}