import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    ));
  }
}
