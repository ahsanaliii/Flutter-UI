import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        Color.fromARGB(255, 106, 0, 155),
        Color.fromARGB(255, 0, 97, 41),
      ),
    ),
  ));
}
