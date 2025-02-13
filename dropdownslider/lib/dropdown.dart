import 'package:flutter/material.dart';

class Dropdownwidget extends StatefulWidget {
  const Dropdownwidget({super.key});

  @override
  State<Dropdownwidget> createState() => _DropdownwidgetState();
}

class _DropdownwidgetState extends State<Dropdownwidget> {
  final List<String> items = ["Apple", "Mango", "cheery", "banana", "Gauva"];
  String selectedItem = "Apple";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Container(
        child: Center(
          child: DropdownButton(
              value: selectedItem,
              items: items.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (newVlaue) {
                setState(() {
                  selectedItem = newVlaue!;
                });
              }),
        ),
      ),
    ));
  }
}
