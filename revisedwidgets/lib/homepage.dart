import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Revised Widgets"),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
