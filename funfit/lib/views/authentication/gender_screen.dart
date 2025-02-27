import 'package:flutter/material.dart';
import 'package:funfit/views/authentication/gender_button.dart';
import 'package:funfit/views/authentication/goal_screen.dart';
import 'package:funfit/views/widgets/button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  List<String> genderNames = ["Male", "Female"];
  int selectedIndex = 0;
  void toggleGender(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
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
                Text(
                  "What's Your Gender?",
                  style: TextStyle(
                    fontSize: mediaQuery.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.03),

                GenderButton(
                  text: genderNames[0],
                  isSelected: true,
                  ontapped: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                SizedBox(height: mediaQuery.height * 0.03),
                GenderButton(
                  text: genderNames[1],
                  isSelected: false,
                  ontapped: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                SizedBox(height: mediaQuery.height * 0.22),
                Buttonwidget(
                  text: "Next",
                  btnwidth: mediaQuery.width * 0.4,
                  ontapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoalScreen()),
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
