import 'package:flutter/material.dart';

class Circularavatar extends StatelessWidget {
  const Circularavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Avatar"),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/20279296/pexels-photo-20279296/free-photo-of-man-holding-red-tulips.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load.png"),
          backgroundColor: Colors.orange,
          child: Text("Hello"),
        ),
      ),
    );
  }
}
