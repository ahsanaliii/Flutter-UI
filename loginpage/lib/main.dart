import 'package:flutter/material.dart';
import 'package:loginpage/bottomnavbar.dart';
import 'package:loginpage/employeelist.dart';
import 'package:loginpage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Employeelist(),
      debugShowCheckedModeBanner: false,
    );
  }
}
