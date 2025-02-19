import 'package:flutter/material.dart';
import 'package:loginpage/bottomnavbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome Back,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.035,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Samantha William",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: mediaQuery.width * 0.05,
                        ),
                      ),
                      Icon(Icons.notification_add, color: Colors.white),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 60),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Office News",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: mediaQuery.width * 0.04,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: mediaQuery.width,
                    alignment: Alignment.topLeft,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        left: 20,
                        right: 20,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Main Menu"),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: mediaQuery.height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: mediaQuery.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Home(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: mediaQuery.height * 0.07,
                                        ),
                                        Text(
                                          maxLines: 2,
                                          "Management Employees & Leave",

                                          style: TextStyle(
                                            fontSize: mediaQuery.width * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: mediaQuery.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: mediaQuery.height * 0.07,
                                        ),
                                        Text(
                                          "Claims & Salaries Employee",
                                          style: TextStyle(
                                            fontSize: mediaQuery.width * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: mediaQuery.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                      mediaQuery.width * 0.03,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: mediaQuery.height * 0.07,
                                        ),
                                        Text(
                                          "Program Training",
                                          style: TextStyle(
                                            fontSize: mediaQuery.width * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: mediaQuery.width * 0.4,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                      mediaQuery.width * 0.03,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: mediaQuery.height * 0.07,
                                        ),
                                        Text(
                                          "System Recruitment",
                                          style: TextStyle(
                                            fontSize: mediaQuery.width * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: mediaQuery.height * 0.15,
            left: mediaQuery.width * 0.05,
            right: mediaQuery.width * 0.05,
            child: Container(
              height: mediaQuery.height * 0.2,
              width: mediaQuery.width * 0.8,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
