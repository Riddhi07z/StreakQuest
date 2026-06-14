import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../data/user_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
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

            Text(
  user?.displayName ?? "Unknown User",
  style: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
),

            const SizedBox(height: 10),
            Text(
            user?.email ?? "No Email",
),


            Text("🔥 Current Streak: ${UserData.streak} Days"),

            const SizedBox(height: 10),

            Text("🪙 Coins: ${UserData.coins}"),

            const SizedBox(height: 10),

            const Text("🏆 Rank: #25"),

            const SizedBox(height: 20),

ElevatedButton(
  onPressed: () async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();

    Navigator.popUntil(context, (route) => route.isFirst);
  },
  child: const Text("Logout"),
),
          ],
        ),
      ),
    );
  }
}