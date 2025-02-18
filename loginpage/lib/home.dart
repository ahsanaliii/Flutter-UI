import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            Text("Welcome Back", style: TextStyle(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ahsan Ali", style: TextStyle(color: Colors.white)),
                  Icon(Icons.notification_add, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
