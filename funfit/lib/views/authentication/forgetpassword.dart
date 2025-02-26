import 'package:flutter/material.dart';
import 'package:funfit/views/authentication/otpscreen.dart';
import 'package:funfit/views/widgets/button.dart';
import 'package:funfit/views/widgets/inputfield.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

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
            children: [
              SizedBox(height: mediaQuery.height * 0.15),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: mediaQuery.width * 0.08,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              SizedBox(
                width: mediaQuery.width * 0.6,
                child: Text(
                  textAlign: TextAlign.center,
                  "Enter your email address to receive a password reset link.",
                  style: TextStyle(fontSize: mediaQuery.height * 0.02),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              SizedBox(
                height: mediaQuery.height * 0.08,
                child: Inputfield(hinttext: "Email"),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Buttonwidget(
                text: "Submit",
                ontapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otpscreen()),
                  );
                },
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              RichText(
                text: TextSpan(
                  text: "Remember password? Back to ",
                  style: TextStyle(color: Color.fromARGB(255, 112, 109, 109)),
                  children: [
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(color: Color(0xff1732A4)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
