import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedDate == null
                  ? "No date selected"
                  : "Selected date: ${_selectedDate!.toLocal()}",
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), // initial date shown
                  firstDate: DateTime(2020), // earliest date selectable
                  lastDate: DateTime(2025, 12, 31), // latest date selectable
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate; // update selected date
                  });
                }
              },
              child: const Text("Pick a date"),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DatePicker"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const Text("Select Date"),
//             ElevatedButton(
//                 onPressed: () async {
//                   DateTime? datepicked = await showDatePicker(
//                       context: context,
//                       firstDate: DateTime(2020),
//                       lastDate: DateTime(2025),
//                       initialDate: DateTime.now());

//                   if (datepicked != null) {
//                     print("Date Selected :  ${datepicked.day}");
//                   }
//                 },
//                 child: const Text("show"))
//           ],
//         ),
//       ),
//     );
//   }
// }
