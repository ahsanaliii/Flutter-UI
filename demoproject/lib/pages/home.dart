import 'package:demoproject/models/category_models.dart';
import 'package:demoproject/models/diet_model.dart';
import 'package:demoproject/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModels> categories = CategoryModels.getCategories();
  List<DietModel> diets = DietModel.getDiets();
  List<PopularDietsModel> popularDiets = PopularDietsModel.getPopularDiets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar(),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]),
            child: _searchfield(),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          _listviewmethod(),
          const SizedBox(
            height: 15,
          ),
          _diets(),
          const SizedBox(
            height: 15,
          ),
          _populardiets()
        ],
      ),
    );
  }

  Column _populardiets() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Popular',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                itemCount: popularDiets.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 25,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.blue,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 145, 130, 130)
                                  .withOpacity(0.7),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: const Offset(0, 10))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          popularDiets[index].iconPath,
                          width: 65,
                          height: 65,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularDiets[index].name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}",
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 121, 114, 114)),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/icons/button.svg",
                            width: 30,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        );
  }

  Column _diets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Recommendations\n for diet",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                  width: 210,
                  decoration: BoxDecoration(
                      color: diets[index].boxColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(diets[index].iconPath),
                      Text(
                        diets[index].name,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 121, 114, 114)),
                      ),
                      Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              diets[index].viewIsSelected
                                  ? const Color.fromARGB(255, 105, 141, 170)
                                  : Colors.transparent,
                              diets[index].viewIsSelected
                                  ? Colors.blue
                                  : Colors.transparent
                            ]),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "View",
                          style: TextStyle(
                              color: diets[index].viewIsSelected
                                  ? Colors.white
                                  : const Color.fromARGB(255, 131, 75, 141),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )),
                      )
                    ],
                  ));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 25,
              );
            },
            itemCount: diets.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        )
      ],
    );
  }

  SizedBox _listviewmethod() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        itemCount: categories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 25);
        },
        itemBuilder: (context, index) {
          // print(index);

          return Container(
            width: 100,
            decoration: BoxDecoration(
                color: categories[index].boxColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(categories[index].iconPath),
                  ),
                ),
                Text(
                  categories[index].name,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 14),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  TextField _searchfield() {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search Pancake...",
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 187, 183, 183), fontSize: 16),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          fillColor: Colors.white,
          suffixIcon: SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Color.fromARGB(255, 206, 203, 203),
                    thickness: 1,
                    indent: 9,
                    endIndent: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/icons/Filter.svg",
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(255, 153, 149, 149),
                          BlendMode.modulate),
                    ),
                  ),
                ],
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none)),
    );
  }

  AppBar Appbar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          // print("Hello  I am getting printed here....");
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 224, 224),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            "assets/icons/Arrow-Left.svg",
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 224, 224),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            "assets/icons/dots.svg",
            height: 5,
            width: 5,
          ),
        ),
      ],
    );
  }
}
