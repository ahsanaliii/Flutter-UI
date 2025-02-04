import 'package:drawer/pages/content.dart';
import 'package:drawer/utils/colors.dart';
import 'package:flutter/material.dart';

class Visacard extends StatelessWidget {
  const Visacard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgcolor,
      body: Center(
          child: Container(
        // color: Colors.red,
        margin: EdgeInsets.all(15),
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: Appcolors.shadwos),

        child: Content(),
      )),
    );
  }
}
