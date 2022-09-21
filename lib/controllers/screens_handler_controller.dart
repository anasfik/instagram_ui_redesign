import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/colors/colors.dart';
import '../helpers/dumbData/bottomNavigationBarItems.dart';

class ScreensHandlerController extends GetxController {
  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }

  showScreenWithIndexOf2(int index) {}

  int? indexOfClickedNavItem;

  int? get getIndexOfClickedNavItem => indexOfClickedNavItem;

  void showScreenWithIndexOf(int index) {
   _initNavigationItemsColor();
    // change color of the icon of the clicked item
    if (bottomNavigationItems[index]["color"] != Colors.transparent) {
      bottomNavigationItems[index]['color'] = AppColors.pink;
    }

    pageController.jumpToPage(index);

    update();
  }
}

extension miniFunctionsExtensions on ScreensHandlerController {
    // turn all Colors to null without the one with transparent color, cause we use it just to take space
   
  _initNavigationItemsColor() {
    bottomNavigationItems.forEach((item) {
      if (item["color"] != Colors.transparent) {
        item["color"] = null;
      }
    });
  }
}
