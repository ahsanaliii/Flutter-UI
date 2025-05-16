import 'package:apiintegration/controller/postdata_controller.dart';
import 'package:apiintegration/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class PostPage extends StatelessWidget {
  PostPage({super.key});
  final PostdataController postdataController = Get.put(PostdataController());

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Data")),
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
          SizedBox(height: 24),
          Obx(
            () =>
                postdataController.isPosting.value
                    ? Center(child: CircularProgressIndicator())
                    : ElevatedButton(
                      onPressed: () {
                        final post = PostModel(
                          title: titleController.text,
                          body: bodyController.text,
                          userId: 1,
                        );
                        postdataController.createPost(post);
                      },
                      child: Text("Submit Data"),
                    ),
          ),
        ],
      ),
    );
  }
}
