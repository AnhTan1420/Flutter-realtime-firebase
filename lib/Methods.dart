import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
Future<User?> createAccount(String name, String email, String password) async {

  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password)
        .user;

    if(user != nul) {
      print("Account created Succesfull");
      return user;
    }  else {
      print("Account creation failed!");
      return user
  }
  } catch (e) {
    print(e);
    return null;
  }
}


Future<User?> logIn(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
      User user = await _auth.signInWithEmailAndPassword(
          email: email, password: password)
          .user;

      if(user != nul) {
        print("Login Succesfull");
        return user;
      }  else {
        print("Login failed!");
        return user
    }
    } catch (e) {
      print(e);
      return null;
    }
}


Future logOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut()
  } catch (e) {
    print("error");
  }
}