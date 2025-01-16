import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gridview extends StatelessWidget {
  Gridview({super.key});

  var arrColors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.black,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Hello this is the app bar of GridView."),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        margin: EdgeInsets.all(11),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 11, crossAxisSpacing: 11),
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
        ),
      ),

      // body: GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   mainAxisSpacing: 11,
      //   crossAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //   ],
      // ),

      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,

      //   children: [
      // Container(color: arrColors[0]),
      // Container(color: arrColors[1]),
      // Container(color: arrColors[2]),
      // Container(color: arrColors[3]),
      // Container(color: arrColors[4]),
      // Container(color: arrColors[5]),
      // Container(color: arrColors[6]),
      //   ],
      // ),
    ));
  }
}
