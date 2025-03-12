import 'package:fetchlist/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  final UserController userController = Get.put(UserController());
  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    // userController.fetctUsers();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Fetching Data "),
      ),
      body: SafeArea(
        child: Obx(() {
          if (userController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: userController.userlist.value.posts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.blue,
                  child: ListTile(
                    title: Text(
                      userController.userlist.value.posts[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      userController.userlist.value.posts[index].body,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 228, 222, 222),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
