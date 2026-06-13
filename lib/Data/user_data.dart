import '../services/storage_service.dart';

class UserData {
  static int streak = 7;
  static int coins = 350;

  static Future<void> loadData() async {
  streak = await StorageService.loadStreak();
  coins = await StorageService.loadCoins();

  print("LOADED STREAK: $streak");
  print("LOADED COINS: $coins");
}

  static Future<void> saveData() async {
    await StorageService.saveStreak(streak);
    await StorageService.saveCoins(coins);
  }
}