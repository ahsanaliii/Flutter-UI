import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:postdoerdata/postdata_controller.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final PostdataController postdataController = Get.put(PostdataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Doer Data")),
      body: Obx(() {
        final data = postdataController.message.value;
        if (data == null) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  postdataController.postdata();
                },
                child: Text("Submit Data"),
              ),
            ],
          );
        }
        return Text("No data available");
      }),
    );
  }
}
