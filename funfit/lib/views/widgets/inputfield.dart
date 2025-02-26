import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  Widget? sufficon;
  Color? sufficoncolor;
  String? hinttext;
  Inputfield({super.key, this.hinttext, this.sufficon});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: TextField(
          decoration: InputDecoration(
            // isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),

            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.blue),
            ),
            fillColor: const Color.fromARGB(255, 233, 229, 229),
            filled: true,
            hintText: hinttext,
            suffixIcon: sufficon,
            suffixIconColor: sufficoncolor,
            hintStyle: TextStyle(
              color: const Color.fromARGB(255, 133, 130, 130),
              fontSize: mediaQuery.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}
