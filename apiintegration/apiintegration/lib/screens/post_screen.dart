import 'package:apiintegration/controller/post_employee_controller.dart';
import 'package:apiintegration/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});

  final PostEmployeeController postEmployeeController = Get.put(
    PostEmployeeController(),
  );

  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post data")),
      body: Column(
        children: [
          TextField(
            controller: fnameController,
            decoration: InputDecoration(label: Text("firstname")),
          ),
          TextField(
            controller: lnameController,
            decoration: InputDecoration(label: Text("lastname")),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(label: Text("emailname")),
          ),
          Obx(() {
            final post = postEmployeeController.postdata.value;
            if (post == null) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final post = Datum(
                        id: 1,
                        email: emailController.text,
                        firstName: fnameController.text,
                        lastName: lnameController.text,
                        avatar: "",
                      );
                      postEmployeeController.getData(post);
                    },
                    child: Text("Submit DATA"),
                  ),

                  Text("No data Available yet"),
                ],
              );
            }
            return Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    final post = Datum(
                      id: 1,
                      email: emailController.text,
                      firstName: fnameController.text,
                      lastName: lnameController.text,
                      avatar: "",
                    );
                    postEmployeeController.getData(post);
                  },
                  child: Text("Submit DATA"),
                ),
                ListTile(
                  leading: Text(post.id.toString()),
                  title: Text(post.firstName),
                  subtitle: Text(post.email),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
