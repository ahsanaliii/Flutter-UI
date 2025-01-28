import 'package:flutter/material.dart';

class CategoryModels {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModels({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModels> getCategories() {
    List<CategoryModels> categories = [
      CategoryModels(
        name: "Salad",
        iconPath: "assets/icons/plate.svg",
        boxColor: Colors.red,
      ),
      CategoryModels(
        name: "Cake",
        iconPath: "assets/icons/pancakes.svg",
        boxColor: Colors.green,
      ),
      CategoryModels(
        name: "Pie",
        iconPath: "assets/icons/pie.svg",
        boxColor: Colors.yellow,
      ),
      CategoryModels(
        name: "Smoothies",
        iconPath: "assets/icons/orange-snacks.svg",
        boxColor: Colors.orange,
      ),
    ];

    return categories;
  }
}
