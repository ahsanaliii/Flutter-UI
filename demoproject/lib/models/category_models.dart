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
    List<CategoryModels> categories = [];
    categories.add(CategoryModels(
        name: "Salad",
        iconPath: "assets/icons/plate.svg",
        boxColor: Colors.red));
    categories.add(CategoryModels(
        name: "Cake",
        iconPath: "assets/icons/pancakes.svg",
        boxColor: Colors.green));
    categories.add(CategoryModels(
        name: "Pie",
        iconPath: "assets/icons/pie.svg",
        boxColor: Colors.yellow));
    categories.add(CategoryModels(
        name: "Smoothies",
        iconPath: "assets/icons/orange-snacks.svg",
        boxColor: Colors.orange));
    return categories;
  }
}
