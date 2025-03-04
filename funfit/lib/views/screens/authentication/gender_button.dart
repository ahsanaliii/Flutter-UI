import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String? text;
  final VoidCallback? ontapped;
  final double? btnwidth;

  final bool isSelected;
  const GenderButton({
    super.key,
    this.text,
    this.ontapped,
    this.btnwidth,

    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        height: mediaQuery.height * 0.07,
        width: btnwidth ?? mediaQuery.width,

        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff1732A4) : Color(0xffDFF7E2),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
