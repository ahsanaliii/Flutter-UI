import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/age_screen.dart';
import 'package:funfit/views/screens/authentication/gender_screen.dart';
import 'package:funfit/views/screens/authentication/height_screen.dart';
import 'package:funfit/views/screens/authentication/signupscreen.dart';
import 'package:funfit/views/screens/authentication/signupsuccess.dart';
import 'package:funfit/views/screens/authentication/weight_screen.dart';
import 'package:funfit/views/screens/home_section/bottomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Bottomnavbar(), debugShowCheckedModeBanner: false);
  }
}
