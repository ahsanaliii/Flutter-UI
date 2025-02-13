import 'package:flutter/material.dart';
import 'package:textfield/checkbox.dart';
import 'package:textfield/dropdown.dart';
import 'package:textfield/homepage.dart';
import 'package:textfield/radiobutton.dart';
import 'package:textfield/textinput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PositionedStackExample(),
    );
  }
}
