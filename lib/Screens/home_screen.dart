import 'package:flutter/material.dart';
import 'sudoku_screen.dart';
import 'leaderboard_screen.dart';
import 'profile_screen.dart';
import '../data/user_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreakQuest"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "🔥 Current Streak",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
  "${UserData.streak} Days",
  style: const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  ),
),

            const SizedBox(height: 40),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Today's Challenge",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text("Sudoku"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SudokuScreen(),
    ),
  );
},
              child: const Text("Play Now"),
            ),
            const SizedBox(height: 20),

ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LeaderboardScreen(),
      ),
    );
  },
  child: const Text("Leaderboard"),
),

const SizedBox(height: 20),

ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  },
  child: const Text("Profile"),
),
          ],
        ),
      ),
    );
  }
}