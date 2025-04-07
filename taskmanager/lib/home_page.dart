import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Background Notifier')),
      body: const Center(child: Text('Notifications every 30 seconds!')),
    );
  }
}
