import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:postdoerdata/patch_data_controller.dart';
import 'package:postdoerdata/postdata_controller.dart';
import 'package:postdoerdata/put_data_controller.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final PostdataController postdataController = Get.put(PostdataController());
  final PutDataController putDataController = Get.put(PutDataController());
  final PatchDataController patchDataController = Get.put(
    PatchDataController(),
  );

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
                  patchDataController.patchData();
                  // putDataController.putData();
                  // postdataController.postdata();
                },
                // child: Text("Submit Data"),
                // child: Text("Put Data"),
                child: Text("Patch Data"),
              ),
            ],
          );
        }
        return Text("No data available");
      }),
    );
  }
}
