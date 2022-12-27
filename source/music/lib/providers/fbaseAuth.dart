import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music/constrans/utils.dart';

Future<bool> CreateUser(
    String useremail, String pass, BuildContext context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: useremail,
      password: pass,
    );
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      showSnackBar("The password provided is too weak.", context);
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      showSnackBar('The account already exists for that email.', context);
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
  return false;
}

Future<bool> UserLogin(String useremail, String pass, BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: useremail, password: pass);
        return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      showSnackBar('No user found for that email.', context);
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      showSnackBar('Wrong password provided for that user.', context);
      print('Wrong password provided for that user.');
    }
  }
  return false;
}
