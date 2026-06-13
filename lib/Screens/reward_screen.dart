import '../services/storage_service.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../data/user_data.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reward"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "🎉 Puzzle Completed!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "+50 Coins",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "🔥 Streak Increased",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () async {
                UserData.streak++;
                UserData.coins += 50;

                await UserData.saveData();

                print("CURRENT STREAK: ${UserData.streak}");
                print("CURRENT COINS: ${UserData.coins}");
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ),
  );
},
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}