import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  var name = "";
  var desigination = "";
  var salary = "";
  var experience = "";
  @override
  void initState() {
    getSaveData();
    super.initState();
  }

  getSaveData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString("name")!;
      desigination = prefs.getString("desigination")!;
      salary = prefs.getString("salary")!;
      experience = prefs.getString("experience")!;
    });
  }

  deleteData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    // desigination = await prefs.remove("desigination") as String;
    // salary = await prefs.remove("salary") as String;
    // experience = await prefs.remove("experience") as String;

    setState(() {
      name = "";
      desigination = "";
      salary = "";
      experience = "";
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              Text(desigination),
              Text(salary),
              Text(experience),

              SizedBox(height: 30),
              ElevatedButton(onPressed: deleteData, child: Text("Delete Data")),
            ],
          ),
        ),
      ),
    );
  }
}
