import 'package:flutter/material.dart';
import '../data/user_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),

            const SizedBox(height: 20),

            const Text(
              "Riddhi Nath",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text("🔥 Current Streak: ${UserData.streak} Days"),

            const SizedBox(height: 10),

            Text("🪙 Coins: ${UserData.coins}"),

            const SizedBox(height: 10),

            const Text("🏆 Rank: #25"),
          ],
        ),
      ),
    );
  }
}