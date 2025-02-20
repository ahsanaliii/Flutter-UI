import 'package:flutter/material.dart';

class Employeelist extends StatelessWidget {
  const Employeelist({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 30),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                    ),
                    SizedBox(width: mediaQuery.width * 0.1),
                    Text(
                      "Management Employees",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: mediaQuery.height,
                width: mediaQuery.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mediaQuery.width,
                        child: Row(
                          children: [
                            Expanded(child: TextFormField()),
                            SizedBox(width: 50),
                            Text("data"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
