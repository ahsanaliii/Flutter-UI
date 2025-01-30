import 'package:flutter/material.dart';

class Dropdownlearn extends StatefulWidget {
  const Dropdownlearn({super.key});

  @override
  State<Dropdownlearn> createState() => _DropdownlearnState();
}

class _DropdownlearnState extends State<Dropdownlearn> {
  final List<String> items = ["Apple", "Mango", "cheery", "banana", "Gauva"];
  var selectedItem = "Mango";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: DropdownButton(
              value: selectedItem,
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.green,
                size: 20,
              ),
              dropdownColor: Colors.blue.withOpacity(0.9),
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
              // elevation: 10,
              // isExpanded: true,
              borderRadius: BorderRadius.circular(12),
              // focusColor: Colors.green.withOpacity(0.7),
              alignment: Alignment.topLeft,
              items: items.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value!;
                });
              }),

          // items.map<DropdownMenuItem<String>>((value) {
          //           return DropdownMenuItem<String>(
          //               value: value, child: Text(value));
          //         }).toList()
        ),
      ),
    );
  }
}
