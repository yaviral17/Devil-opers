import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music/pages/Home.dart';

import 'package:music/pages/loginScreen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 222, 231),
      body: loginScreen_(),
    ),
  ));
}
