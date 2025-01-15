import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  GridviewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("AppBar"),
      ),
      body: SafeArea(
        child: GridView.extent(
          maxCrossAxisExtent: 100,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 116, 57, 52)),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 8, 3, 2)),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 128, 51, 46)),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 10, 25, 107)),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 14, 155, 78)),
            ),
            Container(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 141, 35, 8)),
            ),
          ],
        ),
        // child: GridView.count(
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 11,
        //   crossAxisSpacing: 11,
        //   padding: EdgeInsets.all(11),
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(color: Colors.red),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 116, 57, 52)),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 8, 3, 2)),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 128, 51, 46)),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 10, 25, 107)),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 14, 155, 78)),
        //     ),
        //     Container(
        //       decoration:
        //           BoxDecoration(color: const Color.fromARGB(255, 141, 35, 8)),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
