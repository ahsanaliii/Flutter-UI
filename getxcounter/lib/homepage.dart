import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcounter/count_controller.dart';

class Homepage extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Obx(
                  () => IconButton(
                    onPressed: countController.toggleFavourite,
                    icon: Icon(
                      countController.isFavourite.value
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color:
                          countController.isFavourite.value
                              ? Colors.red
                              : Colors.teal,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Obx(
                    () => Text(
                      "Adjust the size..",
                      style: TextStyle(
                        fontSize: countController.fontsize.value,
                      ),
                    ),
                  ),
                  Obx(
                    () => Slider(
                      min: 10,
                      max: 50,

                      value: countController.fontsize.value,
                      onChanged: (value) {
                        countController.updateSize(value);
                      },
                    ),
                  ),
                ],
              ),

              Obx(
                () => Text(
                  countController.isDark.value ? "Dark Mode" : "Light Mode",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Center(child: Obx(() => Text("Count: ${countController.count}"))),
              ElevatedButton(
                onPressed: countController.decrement,
                child: Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: countController.increment,
                child: Icon(Icons.add),
              ),

              Obx(
                () => Switch(
                  value: countController.isDark.value,
                  onChanged: (value) => countController.toggleTheme(),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: countController.toggleTheme,
      //   child: Icon(Icons.change_circle),
      // ),
    );
  }
}
