import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcounter/count_controller.dart';
import 'package:getxcounter/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CountController counterController = Get.put(CountController());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: counterController.newTheme.value,
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
