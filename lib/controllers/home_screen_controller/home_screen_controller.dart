import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  Rx<double?> scrollPosition1 = 0.0.obs;
  Rx<double?> scrollPosition2 = 0.0.obs;

  @override
  void onInit() {
    pageControllerExample1 = PageController();
    pageControllerExample2 = PageController();

    pageControllerExample1.addListener(() {
      scrollPosition1.value = pageControllerExample1.page;
    });

    pageControllerExample2.addListener(() {
      scrollPosition2.value = pageControllerExample2.page;
    });

    super.onInit();
  }

  late PageController pageControllerExample1;
  late PageController pageControllerExample2;
}
