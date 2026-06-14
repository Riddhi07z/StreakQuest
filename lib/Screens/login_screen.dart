import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'main_screen.dart';
import '../services/firestore_service.dart';
import '../data/user_data.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Future<UserCredential?> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser =
      await GoogleSignIn().signIn();

  if (googleUser == null) return null;

  final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(
    credential,
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
  onPressed: () async {
    final user = await signInWithGoogle();

    if (user != null) {

  await FirestoreService.saveUserData(
    user.user!.uid,
    UserData.streak,
    UserData.coins,
  );

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const MainScreen(),
    ),
  );
}
  },
  child: const Text("Sign in with Google"),
),
          ],
        ),
      ),
    );
  }
}