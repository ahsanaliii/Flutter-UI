import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postjsondata/postdata_controller.dart';
import 'package:postjsondata/postdata_model.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final PostdataController postdataController = Get.put(PostdataController());
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: "Title"),
          ),
          TextField(
            controller: bodyController,
            decoration: InputDecoration(labelText: "Body"),
          ),

          Obx(() {
            final post = postdataController.postdat.value;
            if (post == null) {
              return Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final post = PostData(
                        userId: 1,
                        id: 11,
                        title: titleController.text,
                        body: bodyController.text,
                      );

                      postdataController.postData(post);
                      titleController.text = "";
                      bodyController.text = "";
                    },
                    child: Text("Submit Data"),
                  ),
                ],
              );
            }
            return ListTile(
              leading: Text(post.id.toString()),
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          }),
        ],
      ),
    );
  }
}
