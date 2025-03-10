import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funfit_app/controllers/getxControllers/theme_controller.dart';
import 'package:funfit_app/controllers/utils/app_colors.dart';
import 'package:funfit_app/view/screens/challenges.dart';
import 'package:funfit_app/view/screens/food_logging_screen1.dart';
import 'package:funfit_app/view/screens/guide_screen.dart';
import 'package:funfit_app/view/screens/home_screen.dart';
import 'package:funfit_app/view/screens/leader_board_screen.dart';
import 'package:funfit_app/view/screens/search_bottom_nav_bar.dart';
import 'package:funfit_app/view/screens/settings_screen.dart';
import 'package:get/get.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  int index;
  BottomNavigationBarScreen({super.key, this.index = 0});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  RxInt selectedIndex = 0.obs;
  ThemeController themeController = Get.find();

  List<Widget> screens = [HomeScreen(), FoodLoggingScreen1(), ChallengeScreen(), LeaderBoardScreen(), GuideScreen(), SettingScreen()];
  @override
  void initState() {
    selectedIndex.value = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Obx(() {
          return Stack(
            children: [
              screens[selectedIndex.value],
            ],
          );
        }),
        bottomNavigationBar: Obx(() {
          return Container(
              decoration: BoxDecoration(
                color: themeController.selectedTheme.value == ThemeMode.light ? AppColors.whiteColor : AppColors.blackColor.withOpacity(0.8),
                border: Border(top: BorderSide(color: themeController.selectedTheme.value == ThemeMode.light ? AppColors.whiteColor : AppColors.blackColor.withOpacity(0.8), width: 0)), // Ensures no border/line
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.02),
                width: mediaQuerySize.width,
                height: mediaQuerySize.height * 0.12,
                color: themeController.selectedTheme.value == ThemeMode.light ? AppColors.whiteColor : AppColors.blackColor.withOpacity(0.8),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 0;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.home,
                                  color: selectedIndex.value == 0
                                      ? themeController.selectedTheme.value == ThemeMode.light
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor
                                      : AppColors.greyColor),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: selectedIndex.value == 0 ? 13 : 12,
                                    color: selectedIndex.value == 0
                                        ? themeController.selectedTheme.value == ThemeMode.light
                                            ? AppColors.blackColor
                                            : AppColors.whiteColor
                                        : AppColors.greyColor),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 1;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/apple.svg',
                                color: selectedIndex.value == 1
                                    ? themeController.selectedTheme.value == ThemeMode.light
                                        ? AppColors.blackColor
                                        : AppColors.whiteColor
                                    : AppColors.greyColor,
                              ),
                              Text('Food Log',
                                  style: TextStyle(
                                      fontSize: selectedIndex.value == 1 ? 13 : 12,
                                      color: selectedIndex.value == 1
                                          ? themeController.selectedTheme.value == ThemeMode.light
                                              ? AppColors.blackColor
                                              : AppColors.whiteColor
                                          : AppColors.greyColor))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 2;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.fitness_center,
                                  color: selectedIndex.value == 2
                                      ? themeController.selectedTheme.value == ThemeMode.light
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor
                                      : AppColors.greyColor),
                              Text('Challenges',
                                  style: TextStyle(
                                      fontSize: selectedIndex.value == 2 ? 13 : 12,
                                      color: selectedIndex.value == 2
                                          ? themeController.selectedTheme.value == ThemeMode.light
                                              ? AppColors.blackColor
                                              : AppColors.whiteColor
                                          : AppColors.greyColor))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: mediaQuerySize.width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 3;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.bar_chart,
                                  color: selectedIndex.value == 3
                                      ? themeController.selectedTheme.value == ThemeMode.light
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor
                                      : AppColors.greyColor),
                              Text('Leaderboard',
                                  style: TextStyle(
                                      fontSize: selectedIndex.value == 3 ? 13 : 12,
                                      color: selectedIndex.value == 3
                                          ? themeController.selectedTheme.value == ThemeMode.light
                                              ? AppColors.blackColor
                                              : AppColors.whiteColor
                                          : AppColors.greyColor))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 4;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.book,
                                  color: selectedIndex.value == 4
                                      ? themeController.selectedTheme.value == ThemeMode.light
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor
                                      : AppColors.greyColor),
                              Text('Guides',
                                  style: TextStyle(
                                      fontSize: selectedIndex.value == 4 ? 13 : 12,
                                      color: selectedIndex.value == 4
                                          ? themeController.selectedTheme.value == ThemeMode.light
                                              ? AppColors.blackColor
                                              : AppColors.whiteColor
                                          : AppColors.greyColor))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 5;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.settings,
                                  color: selectedIndex.value == 5
                                      ? themeController.selectedTheme.value == ThemeMode.light
                                          ? AppColors.blackColor
                                          : AppColors.whiteColor
                                      : AppColors.greyColor),
                              Text('Settings',
                                  style: TextStyle(
                                      fontSize: selectedIndex.value == 5 ? 13 : 12,
                                      color: selectedIndex.value == 5
                                          ? themeController.selectedTheme.value == ThemeMode.light
                                              ? AppColors.blackColor
                                              : AppColors.whiteColor
                                          : AppColors.greyColor))
                            ],
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => SearchReelBottomNavBar());
                          },
                          child: Container(
                            height: mediaQuerySize.height * 0.07,
                            width: mediaQuerySize.width * 0.16,
                            padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.03),
                            // padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/add_button.png')), border: Border.all(color: AppColors.greyColor.withOpacity(0.4), width: 2), color: Colors.white, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        }));
  }
}