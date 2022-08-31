import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  Rx<double?> scrollPosition = 0.0.obs;

  @override
  void onInit() {
    pageController.addListener(() {
      scrollPosition.value = pageController.page;

    });

    super.onInit();
  }

  final PageController pageController = PageController();
}
