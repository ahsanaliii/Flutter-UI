import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/height_screen.dart';
import 'package:funfit/views/widgets/button.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  List<String> fitnessLevel = ["Begginer", "Intermediate", "Advanced"];
  late int selectedYear;

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    selectedYear = DateTime.now().year;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 224, 220, 220),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(Icons.arrow_back, size: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: mediaQuery.height * 0.03),
                Text(
                  "What's Your Age?",
                  style: TextStyle(
                    fontSize: mediaQuery.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: mediaQuery.height * 0.05),
                SizedBox(
                  width: mediaQuery.width * 0.4,
                  height: mediaQuery.height * 0.4,
                  child: CupertinoPicker(
                    itemExtent: 32,
                    onSelectedItemChanged: (value) {
                      setState(() {
                        selectedYear = (selectedYear + value);
                      });
                    },
                    useMagnifier: true,

                    children: List.generate(51, (index) {
                      return Center(
                        child: Text(
                          "${2020 + index}",
                          style: TextStyle(
                            color: Color(0xff1732A4),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                // SizedBox(height: mediaQuery.height * 0.03),
                // Container(
                //   width: mediaQuery.width * 0.6,
                //   height: mediaQuery.height * 0.4,
                //   child: CupertinoDatePicker(
                //     onDateTimeChanged: (DateTime newDateTime) {
                //       setState(() {
                //         selectedYear = newDateTime.year;
                //       });
                //     },
                //     mode: CupertinoDatePickerMode.monthYear,
                //     initialDateTime: DateTime(selectedYear),
                //     minimumYear: 1900,
                //     maximumYear: DateTime.now().year,
                //   ),
                // ),

                // Container(
                //   width: 100,
                //   height: 300,
                //   child: YearPicker(
                //     // dragStartBehavior: ,
                //     currentDate: DateTime.now(),
                //     firstDate: DateTime(DateTime.now().year - 100, 1),
                //     lastDate: DateTime(DateTime.now().year + 100, 1),
                //     selectedDate: DateTime.now(),
                //     onChanged: (DateTime dateTime) {
                //       Navigator.pop(context);
                //     },
                //   ),
                // ),
                SizedBox(height: mediaQuery.height * 0.05),
                Buttonwidget(
                  text: "Next",
                  btnwidth: mediaQuery.width * 0.4,
                  ontapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HeightScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
