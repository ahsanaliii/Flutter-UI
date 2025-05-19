import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postdata/get_advice_controller.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GetAdviceController getAdviceController = Get.put(
    GetAdviceController(),
  );

  @override
  void initState() {
    getAdviceController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () =>
            getAdviceController.isLoading.value
                ? Center(
                  child: ListTile(
                    title: Text(getAdviceController.advice.value),
                  ),
                )
                : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
