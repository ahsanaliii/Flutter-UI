import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Home(), debugShowCheckedModeBanner: false);
  }
}
