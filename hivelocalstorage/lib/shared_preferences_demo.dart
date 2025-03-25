import 'package:flutter/material.dart';
import 'package:hivelocalstorage/details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDemo extends StatefulWidget {
  const SharedPreferencesDemo({super.key});

  @override
  State<SharedPreferencesDemo> createState() => _SharedPreferencesDemoState();
}

class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
  final nameTextController = TextEditingController();
  final desiginationTextController = TextEditingController();
  final salaryTextController = TextEditingController();
  final experienceTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.person_pin, size: 100, color: Colors.teal),
                    Text(
                      "Person Details",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      controller: nameTextController,
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        prefixIcon: Icon(Icons.person, color: Colors.teal),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: desiginationTextController,
                      decoration: InputDecoration(
                        hintText: "Enter Desigination",
                        prefixIcon: Icon(Icons.work, color: Colors.teal),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: salaryTextController,
                      decoration: InputDecoration(
                        hintText: "Enter Salary",
                        prefixIcon: Icon(
                          Icons.attach_money,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: experienceTextController,
                      decoration: InputDecoration(
                        hintText: "Enter Experience",
                        prefixIcon: Icon(
                          Icons.timer_outlined,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString("name", nameTextController.text);
                        await prefs.setString(
                          "desigination",
                          desiginationTextController.text,
                        );
                        await prefs.setString(
                          "salary",
                          salaryTextController.text,
                        );
                        await prefs.setString(
                          "experience",
                          experienceTextController.text,
                        );
                        setState(() {
                          // nameTextController.text = "";
                          // desiginationTextController.text = "";
                          // salaryTextController.text = "";
                          // experienceTextController.text = "";
                        });
                        // print(nameTextController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailsScreen();
                            },
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                      ),
                      child: Text(
                        "Save & Navigate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
