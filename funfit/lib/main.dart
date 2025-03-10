import 'package:flutter/material.dart';

import 'package:funfit/views/screens/home_section/bottomnavbar.dart';
import 'package:funfit/views/screens/home_section/homepage.dart';

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
