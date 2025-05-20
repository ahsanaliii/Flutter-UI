import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdata/userdata_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final UserdataController userDataController = Get.put(UserdataController());

  @override
  void initState() {
    userDataController.getUserData();
    super.initState();
  }

  final colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.cyan,
    Colors.yellow,
    Colors.cyanAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: userDataController.users.length,
          itemBuilder: (context, index) {
            final data = userDataController.users[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: colors[index],
                leading: Text(data.id.toString()),
                title: Text(data.firstName),
                subtitle: Text(data.email),
                trailing: Image.network(data.avatar),
              ),
            );
          },
        ),
      ),
    );
  }
}
