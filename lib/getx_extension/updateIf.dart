import 'package:get/get.dart';

extension ConditionalUpdateExtension on GetxController {
  /// same as update(), without id specification, will update all GetBuilder in the app based on a condition
  void updateIf(bool condition) {
    if (condition) {
      refresh();
    }
  }
}
