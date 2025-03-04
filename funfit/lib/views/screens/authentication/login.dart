import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/forgetpassword.dart';
import 'package:funfit/views/screens/authentication/welcome_screen.dart';
import 'package:funfit/views/widgets/button.dart';
import 'package:funfit/views/widgets/inputfield.dart';

class Loginwidget extends StatefulWidget {
  const Loginwidget({super.key});

  @override
  State<Loginwidget> createState() => _LoginwidgetState();
}

class _LoginwidgetState extends State<Loginwidget> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: mediaQuery.height * 0.15),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: mediaQuery.width * 0.08,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                SizedBox(
                  height: mediaQuery.height * 0.08,
                  child: Inputfield(hinttext: "Email"),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                SizedBox(
                  height: mediaQuery.height * 0.08,
                  child: Inputfield(hinttext: "Password"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          // shape: CircleBorder(),
                          activeColor: Color(0xff1732A4),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 151, 148, 148),
                          ),
                          onChanged: (newVlaue) {
                            setState(() {
                              value = newVlaue;
                            });
                          },
                        ),
                        Text(
                          "Remember password",
                          style: TextStyle(fontSize: mediaQuery.height * 0.02),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forgetpassword(),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: mediaQuery.width * 0.3,

                        child: Text(
                          "Forget Password?",
                          style: TextStyle(fontSize: mediaQuery.height * 0.02),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mediaQuery.height * 0.04),
                Buttonwidget(
                  text: "Log In",
                  ontapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                ),

                SizedBox(height: mediaQuery.height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Or With",
                          style: TextStyle(
                            fontSize: mediaQuery.height * 0.02,
                            color: Color.fromARGB(255, 133, 130, 130),
                          ),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png"),
                    SizedBox(width: mediaQuery.width * 0.02),
                    Image.asset("assets/images/facebook.png"),
                    SizedBox(width: mediaQuery.width * 0.02),
                    Image.asset("assets/images/apple.png"),
                  ],
                ),
                SizedBox(height: mediaQuery.height * 0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    Text(
                      " Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1732A4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
