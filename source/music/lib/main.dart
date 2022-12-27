import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/pages/Home.dart';
import 'package:flutter/services.dart';
import 'package:music/pages/loginScreen.dart';
import 'package:music/pages/songPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blueAccent,
  ));

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 222, 231),
      body: HomePage(),
    ),
  ));
}
