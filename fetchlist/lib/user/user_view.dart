import 'package:fetchlist/model/user_model.dart';
import 'package:fetchlist/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final UserController userController = Get.put(UserController());
  @override
  void initState() {
    userController.fetctUsers();

    super.initState();
  }

  // void initState() {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Fetching Data "),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    userController.filterSearchResult(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search advice here...",
                  fillColor: Colors.amber,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            Obx(() {
              if (userController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: userController.SearchItems.value.posts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          title: Text(
                            userController.SearchItems.value.posts[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            userController.SearchItems.value.posts[index].body,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 228, 222, 222),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
