import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showToast() {
    Fluttertoast.showToast(
      msg: "This is a Toast message!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void showWarningToast() {
    Fluttertoast.showToast(
      msg: "⚠️ Warning: Something went wrong!",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Toast Example")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: showToast, child: Text("Show Toast")),
            ElevatedButton(
              onPressed: showWarningToast,
              child: Text("Show Warning Toast"),
            ),
          ],
        ),
      ),
    );
  }
}
