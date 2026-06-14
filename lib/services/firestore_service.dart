import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> saveUserData(
    String uid,
    int streak,
    int coins,
  ) async {
    await _db.collection('users').doc(uid).set({
      'streak': streak,
      'coins': coins,
    });
  }
}