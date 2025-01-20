import 'package:flutter/material.dart';

class Expendedbyumair extends StatelessWidget {
  Expendedbyumair({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            VerticalDivider(
              color: Colors.blue,
              width: 30,
              thickness: 1,
              indent: 100, // Padding from the left
              endIndent: 100, // Padding from the right
            ),
            // ListTile(title: Text("Item 2")),
            // Divider(
            //   color: Colors.blue,
            //   height: 30,
            //   thickness: 1,
            //   indent: 20, // Padding from the left
            //   endIndent: 20, // Padding from the right
            // ),
            Container(
              width: 100,
              height: 100,
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
