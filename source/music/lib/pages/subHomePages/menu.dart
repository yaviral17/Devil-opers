import "package:flutter/material.dart";

class SubMenuPage extends StatefulWidget {
  const SubMenuPage({super.key});

  @override
  State<SubMenuPage> createState() => _SubMenuPageState();
}

class _SubMenuPageState extends State<SubMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Menu"),
      ],
    );
  }
}