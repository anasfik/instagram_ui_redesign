import 'package:flutter/painting.dart';

class ColorHelper {
  static Color hex(String color) {
    // Variables
    String colorString = color.replaceAll('#', '');
    late int colorInt;

    // case of #FFFFFF
    if (_isValidHexColorFormat(color) && colorString.length == 6) {
      colorInt = int.parse(
        colorString,
        radix: 16,
      );
      return Color(colorInt + 0xFF000000);
    }

    // case of #FFF
    if (_isValidHexColorFormat(color) && colorString.length == 3) {
      String doubledString = colorString * 2;
      colorInt = int.parse(
        doubledString,
        radix: 16,
      );
      return Color(colorInt + 0xFF000000);
    }

    throw Exception('Invalid hex color format');
  }

  static bool _isValidHexColorFormat(String color) {
    return color.startsWith("#") &&
        ((color.substring(1, color.length).length == 6) ||
            (color.substring(1, color.length).length == 3) ||
            (color.substring(1, color.length).length == 8));
  }
}
