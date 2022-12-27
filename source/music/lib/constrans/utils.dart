import 'package:flutter/material.dart';

void showSnackBar(String labelText, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 6),
      action: SnackBarAction(
        textColor: Colors.white,
        label: "Dismiss",
        onPressed: () {},
      ),
      backgroundColor: const Color.fromARGB(255, 226, 110, 116),
      content: Text(
        labelText,
      ),
    ),
  );
}
