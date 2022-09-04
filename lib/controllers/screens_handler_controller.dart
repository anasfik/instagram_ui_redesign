import 'package:get/get.dart';

class ScreensHandlerController extends GetxController {
  int? indexOfClickedNavItem;

  int? get getIndexOfClickedNavItem => indexOfClickedNavItem;

  void showScreenWithIndexOf(int index) {
    indexOfClickedNavItem = index;

    update();
  }
}
