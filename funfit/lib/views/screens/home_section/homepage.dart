import 'package:flutter/material.dart';
import 'package:funfit/views/widgets/button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          color: Color(0xff1732A4),
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome to",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.height * 0.03,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Fitness",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQuery.height * 0.05,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/apple.png",
                              ),
                            ),
                          ),
                          SizedBox(width: mediaQuery.width * 0.03),
                          Icon(
                            Icons.notification_add_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.03),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: mediaQuery.height * 0.05),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text("Choose Random Challenge 🛈"),
                          ),
                        ),
                        SizedBox(height: mediaQuery.height * 0.05),
                        Buttonwidget(
                          btnwidth: mediaQuery.width * 0.7,
                          text: "Start Random Challenge",
                        ),
                        SizedBox(height: mediaQuery.height * 0.05),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Workout Category"),
                              Text("View all"),
                            ],
                          ),
                        ),
                        SizedBox(height: mediaQuery.height * 0.05),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: mediaQuery.width * 0.3,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/yoga1.png"),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: mediaQuery.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/yoga2.png"),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: mediaQuery.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/yoga1.png"),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: mediaQuery.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/yoga1.png"),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: mediaQuery.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset("assets/images/yoga1.png"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mediaQuery.height * 0.05),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Recommended Meal"),
                              Text("View all"),
                            ],
                          ),
                        ),
                        SizedBox(height: mediaQuery.height * 0.05),

                        Container(
                          height: mediaQuery.height * 0.2,
                          width: mediaQuery.width * 0.8,
                          // color: Colors.red,
                          child: Image.asset("assets/images/food1.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
