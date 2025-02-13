import 'package:flutter/material.dart';

class RadiobuttonWidget extends StatefulWidget {
  const RadiobuttonWidget({super.key});

  @override
  State<RadiobuttonWidget> createState() => _RadiobuttonWidgetState();
}

class _RadiobuttonWidgetState extends State<RadiobuttonWidget> {
  var radioValue = "A";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Center(
        child: Column(
          children: [
            Radio(
                value: "A",
                groupValue: radioValue,
                onChanged: (value) {
                  setState(() {
                    radioValue = value.toString();
                  });
                }),
            Radio(
                value: "B",
                groupValue: radioValue,
                onChanged: (value) {
                  setState(() {
                    radioValue = value.toString();
                  });
                }),
          ],
        ),
      ),
    ));
  }
}
