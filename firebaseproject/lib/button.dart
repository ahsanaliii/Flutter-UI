import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Color btnColor;
  String text;
  VoidCallback onPressed;
  Button({super.key, required this.onPressed, required this.text, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(backgroundColor: btnColor),
      // style: ButtonStyle(),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
