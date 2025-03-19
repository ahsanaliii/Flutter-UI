import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String firstColor = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (firstColor == "one") {
                    firstColor = "two";
                  } else if (firstColor == "two") {
                    firstColor = "three";
                  } else {
                    firstColor = "one";
                  }
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color:
                      firstColor == "one"
                          ? Colors.red
                          : firstColor == "two"
                          ? Colors.orange
                          : firstColor == "three"
                          ? Colors.yellow
                          : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
