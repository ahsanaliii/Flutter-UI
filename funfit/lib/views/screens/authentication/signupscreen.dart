import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/signupsuccess.dart';
import 'package:funfit/views/widgets/button.dart';
import 'package:funfit/views/widgets/inputfield.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: mediaQuery.height * 0.05),
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: mediaQuery.width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    child: Inputfield(hinttext: "Full Name"),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    child: Inputfield(
                      hinttext: "Phone Number",
                      // sufficon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    child: Inputfield(
                      hinttext: "Country",
                      sufficon: SizedBox(
                        height: 5,
                        child: CountryCodePicker(
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'IT',
                          favorite: ['+39', 'FR'],
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    child: Inputfield(hinttext: "Email"),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    child: Inputfield(
                      hinttext: "Password",
                      sufficon: Icon(
                        Icons.visibility_off,
                        color: Color.fromARGB(255, 117, 113, 113),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.08,
                    // width: mediaQuery.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: value,
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
                        SizedBox(
                          // height: mediaQuery.height * 0.3,
                          width: mediaQuery.width * 0.7,
                          child: Text.rich(
                            // textAlign: TextAlign.center,
                            TextSpan(
                              text: "Check it if you agree to our ",
                              style: TextStyle(
                                fontSize: mediaQuery.width * 0.035,
                              ),
                              children: [
                                TextSpan(
                                  text: "Terms & Conditions",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    decorationThickness: 1,
                                    fontSize: mediaQuery.width * 0.035,
                                  ),
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                    fontSize: mediaQuery.width * 0.035,
                                  ),
                                ),
                                TextSpan(
                                  text: "Pivacy Policy",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                    decorationColor: Colors.black,
                                    fontSize: mediaQuery.width * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.01),
                  Buttonwidget(
                    text: "Sign Up",
                    btnwidth: mediaQuery.width * 0.6,
                    ontapped: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signupsuccess(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),

                  Row(
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
                  SizedBox(height: mediaQuery.height * 0.01),
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
                  SizedBox(height: mediaQuery.height * 0.02),

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
      ),
    );
  }
}
