import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:taskmanageralaram/home_page.dart';
import 'package:workmanager/workmanager.dart';

const String taskName = "playAlarmTask";

@pragma('vm:entry-point') // Important for background isolate
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    if (task == taskName) {
      final player = AssetsAudioPlayer.newPlayer();
      player.open(
        Audio("assets/alarm.mp3"),
        autoStart: true,
        showNotification: false,
        volume: 1.0,
        loopMode: LoopMode.none,
      );
      print("🔔 Alarm Played in Background");
    }
    return Future.value(true);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
