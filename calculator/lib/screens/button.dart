import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color styColor;
  final VoidCallback ontap;

  const ButtonWidget(
      {super.key,
      required this.text,
      required this.textColor,
      required this.buttonColor,
      required this.styColor,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: styColor, fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
