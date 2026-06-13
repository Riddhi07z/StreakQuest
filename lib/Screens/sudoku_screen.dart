import 'package:flutter/material.dart';
import 'reward_screen.dart';

class SudokuScreen extends StatelessWidget {
  const SudokuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sudoku"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Today's Sudoku Challenge",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: const Center(
                child: Text(
                  "Sudoku Grid",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const RewardScreen(),
    ),
  );
},
              child: const Text("Submit Puzzle"),
            ),
          ],
        ),
      ),
    );
  }
}