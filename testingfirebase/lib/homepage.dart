import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<Map<String, dynamic>?> getData() async {
    try {
      final fetchedData =
          await FirebaseFirestore.instance
              .collection("todos")
              .doc("fpA55D9Z9du1eydJXov3")
              .get();
      return fetchedData.data();
    } catch (e) {
      print("Error fetching data: $e");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    // print(getData());
    getData();
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: FutureBuilder<Map<String, dynamic>?>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error loading data"));
              } else if (!snapshot.hasData || snapshot.data == null) {
                return const Center(child: Text("No data available"));
              }

              String task = snapshot.data?['task'] ?? "No Task Found";

              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: ListTile(
                      tileColor: Colors.lightBlue,
                      title: Text(task),
                      subtitle: Text(snapshot.data?["task"]),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
