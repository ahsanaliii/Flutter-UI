import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Push Notification")),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("send Notification")),
        ],
      ),
    );
  }
}
