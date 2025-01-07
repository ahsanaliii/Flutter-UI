import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
  const GradientColor(this.colorA, this.colorB, {super.key});

  final Color colorA;
  final Color colorB;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorA,
            colorB,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-2.png'),
        // child: Image.asset('assets/images/dice-1.png'),
        // child: Image.asset('assets/images/dice-1.png'),
      ),
    );
  }
}
