import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final String? text;
  final VoidCallback? ontapped;
  final double? btnwidth;
  const Buttonwidget({super.key, this.text, this.ontapped, this.btnwidth});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        height: mediaQuery.height * 0.06,
        width: btnwidth ?? mediaQuery.width,
        // width: mediaQuery.width * 0.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff1732A4),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          // textAlign: TextAlign.center,
          text!,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
