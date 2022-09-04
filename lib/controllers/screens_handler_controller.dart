import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/colors/colors.dart';
import '../helpers/dumbData/bottomNavigationBarItems.dart';

class ScreensHandlerController extends GetxController {
  int? indexOfClickedNavItem;

  int? get getIndexOfClickedNavItem => indexOfClickedNavItem;

  void showScreenWithIndexOf(int index) {
    // turn all Colors to null without the one with transparent color, cause we use it just to take space
    bottomNavigationItems.forEach((item) {
      if (item["color"] != Colors.transparent) {
        item["color"] = null;
      }
    });
    // change color of the icon of the clicked item
    if (bottomNavigationItems[index]["color"] != Colors.transparent) {
      bottomNavigationItems[index]['color'] = AppColors.pink;
    }

    indexOfClickedNavItem = index;

    update();
  }
}
