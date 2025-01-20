import 'package:expended/expended.dart';
import 'package:expended/expendedbyumair.dart';
import 'package:expended/inputfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DividerExample(),
    );
  }
}