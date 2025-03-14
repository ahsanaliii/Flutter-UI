import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  Textinput({super.key});

  var uName = TextEditingController();
  var uPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  controller: uName,
                  decoration: InputDecoration(
                    hintText: "enter name here..",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(
                          color: Colors.green,
                        )),
                    //   enabledBorder: OutlineInputBorder(
                    //       //   borderRadius: BorderRadius.circular(11),
                    //       borderSide: BorderSide(
                    //     color: const Color.fromARGB(255, 170, 5, 5),
                    //   )),
                    //   focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(11),
                    //     borderSide: BorderSide(color: Colors.green, width: 2),
                    //   ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(color: Colors.orange)),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  controller: uPass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(color: Colors.yellow, width: 2)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 99, 9, 84),
                      ),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      var name = uName.text;
                      var pass = uPass.text;
                      print("My name is $name  and password is $pass");
                    },
                    child: const Text("Click me..."))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
