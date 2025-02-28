import 'package:flutter/material.dart';
import 'package:funfit/views/authentication/age_screen.dart';
import 'package:funfit/views/authentication/signupscreen.dart';
import 'package:funfit/views/authentication/signupsuccess.dart';
import 'package:funfit/views/authentication/weight_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Signupscreen(), debugShowCheckedModeBanner: false);
  }
}
