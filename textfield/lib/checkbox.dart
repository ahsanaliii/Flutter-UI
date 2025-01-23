import 'package:flutter/material.dart';

class Checkboxwidget extends StatefulWidget {
  Checkboxwidget({super.key});

  @override
  State<Checkboxwidget> createState() => _CheckboxwidgetState();
}

class _CheckboxwidgetState extends State<Checkboxwidget> {
  var checkValue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Checkbox(
            value: checkValue,
            activeColor: Colors.red,
            checkColor: Colors.green,
            onChanged: (value) {
              setState(() {
                checkValue = !checkValue;
              });
            }),
      ),
    ));
  }
}
