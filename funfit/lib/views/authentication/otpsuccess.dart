import 'package:flutter/material.dart';
import 'package:funfit/views/authentication/login.dart';
import 'package:funfit/views/widgets/button.dart';

class Otpsuccess extends StatelessWidget {
  Otpsuccess({super.key});

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
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                "Successfully",
                style: TextStyle(
                  fontSize: mediaQuery.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                textAlign: TextAlign.center,
                "Your password has been updated, please change your password regularly to avoid this happening",
                style: TextStyle(color: const Color.fromARGB(255, 85, 82, 82)),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Buttonwidget(
                text: "Continue",

                // ontapped: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Loginwidget()),
                //   );
                // },
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginwidget()),
                  );
                },
                child: Text(
                  textAlign: TextAlign.center,
                  "Back to Login",
                  style: TextStyle(color: Color(0xff1732A4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
