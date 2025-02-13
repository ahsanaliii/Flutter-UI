import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  var emailTextController = TextEditingController();
  var passTextController = TextEditingController();
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
                controller: emailTextController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(color: Colors.orange, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 233, 0, 155),
                          width: 2),
                    ),
                    suffixText: "",
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                    prefixIcon: const Icon(Icons.email)),
              ),
              Container(
                height: 50,
              ),
              TextField(
                controller: passTextController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(color: Colors.grey))),
              ),
              ElevatedButton(
                  onPressed: () {
                    String uEmail = emailTextController.text;
                    String uPass = passTextController.text;
                    print('user email is $uEmail and password is $uPass');
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    ));
  }
}
