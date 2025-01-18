import 'package:flutter/material.dart';

class HeartRippleInkWell extends StatelessWidget {
  const HeartRippleInkWell({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Heart Ripple Effect")),
      body: Center(
        child: ClipPath(
          clipper: HeartClipper(), // Custom Heart Clipper
          child: Material(
            color: Colors.transparent, // Ensures ripple effect is visible
            child: InkWell(
              onTap: () {
                print("Heart tapped");
              },
              splashColor: Colors.red.withOpacity(0.5), // Ripple effect color
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink, // Background color of the heart
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    double width = size.width;
    double height = size.height;

    path.moveTo(width / 2, height / 4); // Start point at the top middle
    path.cubicTo(
      0, height / 8, // Left control point
      0, height / 2, // Left-bottom control point
      width / 2, height, // Bottom point
    );
    path.cubicTo(
      width, height / 2, // Right-bottom control point
      width, height / 8, // Right control point
      width / 2, height / 4, // End point back at the top middle
    );
    path.close(); // Close the path to form the heart
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// class Gesture extends StatelessWidget {
  // const Gesture({super.key});
  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //       child: Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.grey,
  //       title: Text("Its my appBar."),
  //     ),
  //     body: InkWell(
  //       onTap: () {
  //         print("Icon tapped");
  //       },
  //       splashColor: Colors.red,
  //       borderRadius: BorderRadius.circular(30),
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Icon(
  //           Icons.favorite,
  //           color: Colors.pink,
  //           size: 50,
  //         ),
  //       ),
  //     ),
      // body: InkWell(
      //   highlightColor: Colors.yellow,
      //   onTap: () {
      //     print("taped on container..");
      //   },
      //   child: Container(
      //     alignment: Alignment.center,
      //     margin: EdgeInsets.all(30),
      //     width: 300,
      //     height: 300,
      //     color: const Color.fromARGB(255, 216, 203, 203),
      //     child: InkWell(
      //       onTap: () => print("tapped on text."),
      //       highlightColor: Colors.yellow,
      //       child: Text("Hey I am inside the container. "),
      //     ),
      //   ),
      // ),
//     ));
//   }
// }
