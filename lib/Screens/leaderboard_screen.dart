import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "🏆 Top Players",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            ListTile(
              leading: const Text("🥇"),
              title: const Text("Rahul"),
              trailing: const Text("150 Days"),
            ),

            ListTile(
              leading: const Text("🥈"),
              title: const Text("Priya"),
              trailing: const Text("120 Days"),
            ),

            ListTile(
              leading: const Text("🥉"),
              title: const Text("Amit"),
              trailing: const Text("100 Days"),
            ),

            const SizedBox(height: 30),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text("You"),
              trailing: Text("7 Days"),
            ),
          ],
        ),
      ),
    );
  }
}