import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backColor;
 
  final VoidCallback onTap;
  const Buttonwidget({
    super.key,
    
    required this.text,
    required this.textColor,
    required this.backColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: mediaQuery.height * 0.09,
        width: mediaQuery.width * 0.09,
        decoration: BoxDecoration(color: backColor, shape: BoxShape.circle),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
