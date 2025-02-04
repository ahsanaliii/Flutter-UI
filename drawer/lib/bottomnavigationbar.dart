import 'package:drawer/counter.dart';
import 'package:drawer/date.dart';
import 'package:drawer/gridview.dart';
import 'package:drawer/home.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int selectedIndex = 0;
  // List<Widget> widgets = [
  //   const Text("Home"),
  //   const Text("Search"),
  //   const Text("Add"),
  //   const Text("Profile"),
  // ];

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: const Text("BottomNavigationBar"),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
      body: Center(
        child: PageView(
          controller: pageController,
          children: [HomePage(), Counter(), DateWidget(), GridviewWidget()],
        ),
        // child: widgets.elementAt(selectedIndex),
      ),
    );
  }
}
