import 'package:flutter/material.dart';

import '../../../helpers/colors/colors.dart';
import '../screens_handler_controller.dart';
import '../typedef/typedef.dart';

extension InitNavigationItemsColorExtensions on ScreensHandlerController {
  void _initNavigationItemsColor(List itemsList) {
    for (var item in itemsList) {
      if (item["color"] != Colors.transparent) {
        item["color"] = null;
      }
    }
  }

  /// turn all Colors to null without the one with transparent color, cause we use it just to take space
  get initNavigationItemsColor => _initNavigationItemsColor;
}

extension ColorizeItemWithIndexExtension on ScreensHandlerController {
  void _colorizeItemWithIndex(List itemsList, index) {
    if (itemsList[index]["color"] != Colors.transparent) {
      itemsList[index]['color'] = AppColors.pink;
    }
  }

  /// change color of the icon of the clicked item
  get colorizeItemWithIndex => _colorizeItemWithIndex;
}

extension IsClickedOnAnotherItemExtension on ScreensHandlerController {
  bool _isClickedOnAnotherItem(int index) {
    if (previousIndex == index) {
      print(false);
      return false;
    }
    previousIndex = index;
    print(true);
    return true;
  }

  CheckerWithIndex get isClickedOnAnotherItem => _isClickedOnAnotherItem;
}
