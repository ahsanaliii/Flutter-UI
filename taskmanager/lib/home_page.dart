// import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:taskmanager/main.dart';



// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   void _scheduleAlarm() async {
//     await AndroidAlarmManager.periodic(
//       const Duration(seconds: 10), // Daily
//       0, // Alarm ID
//       callback,
//       wakeup: true, // Make sure it wakes the phone if sleeping
//       rescheduleOnReboot: true,
//     );
//     print("Alarm scheduled!");
//   }

//   void _cancelAlarm() async {
//     await AndroidAlarmManager.cancel(0);
//     print("Alarm cancelled.");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Task Manager"),
//         backgroundColor: Colors.amber,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: _scheduleAlarm,
//                 child: Text("Schedule Daily Task"),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _cancelAlarm,
//                 child: Text("Cancel Task"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
