import 'package:flutter/material.dart';
import 'gradient_color.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(
          Color.fromARGB(31, 224, 86, 86),
          Color.fromARGB(255, 67, 133, 13),
        ),
      ),
    ),
  );
}
