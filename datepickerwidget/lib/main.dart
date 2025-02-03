import 'package:datepickerwidget/date.dart';
import 'package:datepickerwidget/home.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      theme: ThemeData.light(), // Ensures date picker visibility
      home: DateWidget(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   DateTime? _selectedDate;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Date Picker Example"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _selectedDate == null
//                   ? "No date selected"
//                   : "Selected date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}", // Formats date properly
//               style: const TextStyle(fontSize: 18),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 // DateTime now = DateTime.now();
//                 DateTime? pickedDate = await showDatePicker(
//                   context: context,
//                   initialDate: DateTime.now(),
//                   // initialDate: now.isBefore(DateTime(2025, 12, 31))
//                   //     ? now
//                   //     : DateTime(2025, 12, 31),
//                   firstDate: DateTime(2020),
//                   lastDate: DateTime(2025, 12, 31), // Ensures valid range
//                   // builder: (context, child) {
//                   //   return Theme(
//                   //     data: ThemeData.light(), // Ensures visibility
//                   //     child: child!,
//                   //   );
//                   // },
//                 );
//                 if (pickedDate != null) {
//                   setState(() {
//                     _selectedDate = pickedDate; // Updates selected date
//                   });
//                 }
//               },
//               child: const Text("Pick a date"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
