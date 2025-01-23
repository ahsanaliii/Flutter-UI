import 'package:flutter/material.dart';

class PositionedStackExample extends StatelessWidget {
  const PositionedStackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack with Positioned Widgets")),
      body: Center(
          child: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Positioned(
              top: 10,
              left: 22,
              bottom: 12,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              )),
          Positioned(
              right: 150,
              top: 150,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ))
        ],
      )),
    );
  }
}
