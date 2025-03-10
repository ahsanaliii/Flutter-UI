import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/gender_screen.dart';
import 'package:funfit/views/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Are You Ready?",
                  style: TextStyle(fontSize: mediaQuery.height * 0.04),
                ),
                SizedBox(height: mediaQuery.height * 0.03),
                Buttonwidget(
                  text: "I'm Ready",
                  btnwidth: mediaQuery.width * 0.4,
                  ontapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenderScreen()),
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
