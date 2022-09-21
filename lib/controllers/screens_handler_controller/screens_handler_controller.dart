import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_redesign/controllers/screens_handler_controller/extensions/sub_methods_helper.dart';

import '../../helpers/dumbData/bottomNavigationBarItems.dart';

class ScreensHandlerController extends GetxController {
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  PageController? pageController;
  int? previousIndex;

  String idToUpdateWith = "screensHandler";

  void showScreenWithIndexOf(int index) {
    //
    initNavigationItemsColor(bottomNavigationItems);
    colorizeItemWithIndex(bottomNavigationItems, index);
    pageController!.jumpToPage(index);
    update(
      [idToUpdateWith],
      isClickedOnAnotherItem(index),
    );
  }
}
