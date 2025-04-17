import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _startAlarmTask() {
    Workmanager().registerOneOffTask(
      DateTime.now().millisecondsSinceEpoch.toString(),
      taskName,
      initialDelay: const Duration(seconds: 10), // delay before it runs
    );
    print("✅ Alarm task scheduled to run in 10 seconds.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Background Alarm")),
      body: Center(
        child: ElevatedButton(
          onPressed: _startAlarmTask,
          child: const Text("Start Alarm Task"),
        ),
      ),
    );
  }
}
