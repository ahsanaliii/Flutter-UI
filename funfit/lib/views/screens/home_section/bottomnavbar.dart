import 'package:flutter/material.dart';
import 'package:funfit/views/screens/authentication/gender_screen.dart';
import 'package:funfit/views/screens/authentication/goal_screen.dart';
import 'package:funfit/views/screens/authentication/login.dart';
import 'package:funfit/views/screens/authentication/otpscreen.dart';
import 'package:funfit/views/screens/authentication/signupscreen.dart';
import 'package:funfit/views/screens/authentication/weight_screen.dart';
import 'package:funfit/views/screens/home_section/homepage.dart';
import 'package:funfit/views/widgets/column_bottom_nav.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

int selectedIndex = 0;

class _BottomnavbarState extends State<Bottomnavbar> {
  List<Widget> pages = [
    Homepage(),
    Otpscreen(),
    Signupscreen(),
    GoalScreen(),
    GenderScreen(),
    WeightScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    // bool isSelected = true;
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Expanded(child: pages[selectedIndex]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnBottomNav(
                    isSelected: selectedIndex == 0,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 0;
                        // print("prinitngg food logs111");
                      });
                    },
                    bottomNavIcon: Icons.home,
                    bottomNavLabel: "Home",
                  ),
                  ColumnBottomNav(
                    isSelected: selectedIndex == 1,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 1;
                        // print("prinitngg food logs111");
                      });
                    },
                    bottomNavIcon: Icons.food_bank,
                    bottomNavLabel: "Food Log",
                  ),
                  ColumnBottomNav(
                    isSelected: selectedIndex == 2,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 2;
                        // print("prinitngg food logs111");
                      });
                    },
                    bottomNavIcon: Icons.work,
                    bottomNavLabel: "Challenges",
                  ),
                  ColumnBottomNav(
                    isSelected: selectedIndex == 3,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 3;
                        // print("prinitngg food logs111");
                      });
                    },
                    bottomNavIcon: Icons.leaderboard,
                    bottomNavLabel: "Leaderboard",
                  ),
                  ColumnBottomNav(
                    isSelected: selectedIndex == 4,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 4;
                        // print("prinitngg food logs111");
                      });
                    },
                    bottomNavIcon: Icons.book,
                    bottomNavLabel: "Guides",
                  ),
                  ColumnBottomNav(
                    isSelected: selectedIndex == 5,
                    ontapped: () {
                      setState(() {
                        selectedIndex = 5;
                        // print(selectedIndex);
                      });
                    },
                    bottomNavIcon: Icons.settings,
                    bottomNavLabel: "Settings",
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 470,
            left: 120,

            child: Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Image.asset("assets/images/plus.png"),
            ),
          ),
        ],
      ),
    );
  }
}
