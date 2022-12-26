import 'package:flutter/material.dart';
import 'package:music/pages/Home.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 222, 231),
      body: HomePage(),
    ),
  ));
}
