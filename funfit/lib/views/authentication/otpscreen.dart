import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:funfit/views/authentication/otpsuccess.dart';
import 'package:funfit/views/widgets/button.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
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
                  "Verification Code",
                  style: TextStyle(
                    fontSize: mediaQuery.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.03),
                Text(
                  textAlign: TextAlign.center,
                  "We have sent the verification code to your email address",
                  style: TextStyle(fontSize: mediaQuery.height * 0.02),
                ),

                SizedBox(height: mediaQuery.height * 0.03),
                SizedBox(
                  width: mediaQuery.width,
                  child: FittedBox(
                    child: OtpTextField(
                      numberOfFields: 4,

                      // margin: EdgeInsets.all(3),
                      borderColor: Color(0xff1732A4),

                      fieldWidth: 50,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      // fieldWidth: 40,
                      borderRadius: BorderRadius.circular(15),
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text(
                                'Code entered is $verificationCode',
                              ),
                            );
                          },
                        );
                      }, // end onSubmit
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.03),

                Buttonwidget(
                  text: "Continue",
                  ontapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otpsuccess()),
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
