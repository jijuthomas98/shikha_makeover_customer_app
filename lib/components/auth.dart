import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user.uid;
  }

  Future<String> createUserWithEmailAndPassword(
      String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user.uid;
  }

  String currentUser() {
    User user = FirebaseAuth.instance.currentUser;
    return user.uid;
  }

  Future<String> signInAnonymously() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    return userCredential.user.uid;
  }

  onAuthStateChange() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future signOut() async {
    return await FirebaseAuth.instance.signOut();
  }
}
