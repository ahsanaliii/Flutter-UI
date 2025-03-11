import 'package:fetchlist/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  final UserController userController = Get.put(UserController());
  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() {
        // if (userController.isLoading.value) {
        //   // return const Center(child: CircularProgressIndicator());
        // }
        return ListView.builder(
          itemCount: userController.userlist.length,
          itemBuilder: (context, index) {
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.red,
                child: ListTile(
                  title: Text(userController.userlist[index].name),
                  leading: Text(userController.userlist[index].email),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
