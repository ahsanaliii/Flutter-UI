import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;
  var isDark = false.obs;
  var isFavourite = false.obs;
  var fontsize = 20.0.obs;
  Rx<ThemeMode> newTheme = ThemeMode.light.obs;

  void updateSize( double newValue) {
    fontsize.value = newValue;
  }

  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
    isDark.value ? newTheme.value = ThemeMode.light : ThemeMode.dark;
    Get.changeTheme(isDark.value ? ThemeData.dark() : ThemeData.light());
  }

  void increment() {
    count++;
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
  }
}
