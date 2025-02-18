import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backColor;
  TextStyle? style;
  final VoidCallback onTap;
  Buttonwidget({
    super.key,

    this.style,
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
        padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.025),
        decoration: BoxDecoration(color: backColor, shape: BoxShape.circle),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style:
                  style ??
                  TextStyle(
                    fontSize: mediaQuery.width * 0.04,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}


//  mediaQuery.width * 0.04