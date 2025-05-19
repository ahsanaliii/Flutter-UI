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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            Obx(() {
              final post = postdataController.postData.value;
              if (post == null) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final post = PostModel(
                          title: titleController.text,
                          body: bodyController.text,
                          userId: 1,
                        );
                        postdataController.createPost(post);
                        titleController.text = "";
                        bodyController.text = "";
                      },
                      child: Text("Submit Data"),
                    ),
                    SizedBox(height: 20),
                    Text("No data Yet"),
                  ],
                ); // or a placeholder like Text("No data yet")
              }
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
                leading: Text(post.id.toString()),
              );
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text("ID: ${post.id ?? ''}"),
              //     Text("Title: ${post.title}"),
              //     Text("Body: ${post.body}"),
              //     Text("User ID: ${post.userId}"),
              //   ],
              // );
            }),
            // Obx(
            //   () =>
            //       postdataController.isPosting.value
            //           ? Center(child: CircularProgressIndicator())
            //           : Column(
            //             children: [
            //               ElevatedButton(
            //                 onPressed: () {
            //                   final post = PostModel(
            //                     title: titleController.text,
            //                     body: bodyController.text,
            //                     userId: 1,
            //                   );
            //                   postdataController.createPost(post);
            //                 },
            //                 child: Text("Submit Data"),
            //               ),
            //               SizedBox(height: 10),
            //               ListTile(
            //                 title: Text(
            //                   postdataController.postData.value!.title,
            //                 ),
            //                 subtitle: Text(
            //                   postdataController.postData.value!.body,
            //                 ),
            //                 leading: Text(
            //                   postdataController.postData.value!.userId
            //                       .toString(),
            //                 ),
            //               ),
            //             ],
            //           ),
            // ),
          ],
        ),
      ),
    );
  }
}
