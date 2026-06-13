import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'data/user_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserData.loadData();

  runApp(const StreakQuestApp());
}

class StreakQuestApp extends StatelessWidget {
  const StreakQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_fire_department,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              "StreakQuest",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "One Game A Day",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              "Keep The Streak Alive",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    ),
  );
},
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}