import 'package:flutter/material.dart';
import 'package:gridview/gridview.dart';
import 'package:gridview/homepage.dart';
import 'package:gridview/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Listview(),
      debugShowCheckedModeBanner: false,
    );
  }
}