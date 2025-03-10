import 'package:flutter/material.dart';

class WeightInputfield extends StatelessWidget {
  final int? maxlength;
  const WeightInputfield({super.key, this.maxlength});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        maxLength: maxlength ?? 2,
        // textCapitalization: TextCapitalization
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

        decoration: InputDecoration(
          counterText: "",
          isDense: true,

          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
            // horizontal: 0,
            left: 10,
          ),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(),
          // ),
        ),
      ),
    );
  }
}
