import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mixins/tab_initialisations.dart';

class ProfileScreenController extends GetxController
    with TabInitialisationsMixin, GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List<String> tabsTexts = ["Posts", "IGTV", "Saved"];
  
  @override
  void onInit() {
    tabController = TabController(length: tabsTexts.length, vsync: this);
    super.onInit();
  }
}
