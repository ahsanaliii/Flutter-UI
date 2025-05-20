import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getdata/post_userdata_controller.dart';
import 'package:getdata/userdata_model.dart';

class PostPage extends StatefulWidget {
  PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final PostUserdataController postUserdataController = Get.put(
    PostUserdataController(),
  );

  final TextEditingController emailContrller = TextEditingController();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();
  @override
  void initState() {
    postUserdataController.postUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text("First Name")),
            controller: firstNameController,
          ),
          TextField(
            decoration: InputDecoration(label: Text("Last Name")),
            controller: lastNameController,
          ),
          TextField(
            decoration: InputDecoration(label: Text("Email")),
            controller: emailContrller,
          ),

          Obx(() {
            final post = postUserdataController.postUserData.value;
            if (post == null) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final post = User(
                        id: 1,
                        email: emailContrller.text,
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        avatar: "",
                      );
                      postUserdataController.postUserData(post);
                    },
                    child: Text("Submit Data"),
                  ),
                  Text("No Data Yet"),
                ],
              );
            }
            return ListTile(
              title: Text(post.firstName),
              subtitle: Text(post.lastName),
              trailing: Text(post.email),
              leading: Text(post.id.toString()),
            );
          }),
        ],
      ),
    );
  }
}
