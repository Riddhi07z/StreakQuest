import '../data/user_data.dart';
import 'package:flutter/material.dart';


class LeaderboardScreen extends StatelessWidget {
  LeaderboardScreen({super.key});
  final List<Map<String, dynamic>> players =  [
    {"name": "Rahul", "streak": 150},
    {"name": "Priya", "streak": 120},
    {"name": "Amit", "streak": 100},
    {"name": "Riddhi", "streak": UserData.streak},
  ];

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

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text("#${index + 1}"),
                      title: Text(players[index]["name"]),
                      trailing: Text(
                        "${players[index]["streak"]} Days",
                      ),
                    ),
                  );
                },
              ),
            ),

            const Divider(),

            ListTile(
  leading: const Icon(Icons.person),
  title: const Text("You"),
  trailing: Text("${UserData.streak} Days"),
),
          ],
        ),
      ),
    );
  }
}