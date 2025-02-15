import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10), // Adds margin of 10 on all sides
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 94, 6, 105),
          foregroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Text(answerText, textAlign: TextAlign.center),
      ),
    );
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    //       backgroundColor: const Color.fromARGB(255, 94, 6, 105),
    //       foregroundColor: Colors.white),
    //   onPressed: onTap,
    //   child: Text(answerText, textAlign: TextAlign.center),
    // );
  }
}
