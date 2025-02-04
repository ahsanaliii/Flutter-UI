import 'package:drawer/bottomnavigationbar.dart';
import 'package:drawer/home.dart';
import 'package:drawer/stepper.dart';
import 'package:drawer/utils/colors.dart';
import 'package:drawer/visacard.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Appcolors.bgcolor),
      home: const Visacard(),
    );
  }
}
