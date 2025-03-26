import 'package:flutter/material.dart';
import 'package:sharedpreferences/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.teal,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
