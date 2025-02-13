import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker AppBar"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedDate == null
                  ? "No date selected"
                  : "Selected Date :  ${selectedDate!.toLocal()}"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2025, 12, 31));
                    if (pickedDate != null) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: const Text("Pick a Date")),
              Text(selectedTime == null
                  ? "no time selected"
                  : "Selected time is ${selectedTime!.hour} : ${selectedTime!.minute} "),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedtime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.input);
                    if (pickedtime != null) {
                      setState(() {
                        selectedTime = pickedtime;
                      });
                    }
                  },
                  child: const Text("Pick a Time"))
            ],
          ),
        ),
      ),
    );
  }
}
