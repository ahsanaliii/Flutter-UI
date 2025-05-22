import 'package:apiintegration/controller/get_employee_controller.dart';
import 'package:apiintegration/services/employee_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetScreen extends StatelessWidget {
  GetScreen({super.key});

  final GetEmployeeController getEmployeeController = Get.put(
    GetEmployeeController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Data"),

        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       EmployeeServices().getData();
        //     },
        //     icon: Icon(Icons.refresh),
        //   ),
        // ],
      ),
      body: Obx(
        () => Column(
          children: [
            ElevatedButton(
              onPressed: () {
                getEmployeeController.getEmployeData();
              },
              child: Text("Get Data"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: getEmployeeController.employeList.length,
                itemBuilder: (context, index) {
                  final data = getEmployeeController.employeList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Text(data.id.toString()),
                      title: Text(data.firstName),
                      subtitle: Text("${data.lastName} -- ${data.email}"),
                      trailing: Image.network(data.avatar),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      //  Obx(
      //   () => ListView.builder(
      //     itemCount: getEmployeeController.employeList.length,
      //     itemBuilder: (context, index) {
      //       final data = getEmployeeController.employeList[index];
      //       return ListTile(
      //         leading: Image.network(data.avatar.toString()),
      //         title: Text(data.firstname.toString()),
      //         subtitle: Text(data.lastname.toString()),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
