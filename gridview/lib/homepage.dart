import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Hello This is my AppBar."),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: 300,
        width: 300,
        padding: const EdgeInsets.all(50),
        foregroundDecoration: BoxDecoration(
            color: const Color.fromARGB(255, 195, 179, 199).withOpacity(0.5)),
        margin: const EdgeInsets.all(80),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.red, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(70)),
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    transform: Matrix4.rotationZ(3),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 43, 145, 48),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Ahsan.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    transform: Matrix4.rotationZ(6),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child:
                          Text("Ali.", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    transform: Matrix4.rotationZ(2),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 54, 244),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text("Flutter.",
                            style: TextStyle(color: Colors.white))),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    transform: Matrix4.rotationZ(2),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 163, 14, 71),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Dev.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}


 // transform: Matrix4.rotationZ(.3),
        // alignment: Alignment.center,