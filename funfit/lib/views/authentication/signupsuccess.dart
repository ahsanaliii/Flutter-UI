import 'package:flutter/material.dart';
import 'package:funfit/views/authentication/login.dart';
import 'package:funfit/views/widgets/button.dart';

class Signupsuccess extends StatelessWidget {
  Signupsuccess({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Color(0xff1732A4),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.done, color: Colors.white, size: 40),
              ),
              // Image.asset("assets/images/CheckCircle.png"),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                "Registration Successful!",
                style: TextStyle(
                  fontSize: mediaQuery.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                textAlign: TextAlign.center,
                "Your account is awaiting admin approvel. You will receive a notification once your profile is activated.",
                style: TextStyle(color: const Color.fromARGB(255, 85, 82, 82)),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Buttonwidget(
                text: "Continue",
                btnwidth: mediaQuery.width * 0.6,
                ontapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginwidget()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
