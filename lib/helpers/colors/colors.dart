import 'package:flutter/painting.dart';
import 'package:instagram_redesign/helpers/colors/colors_helper.dart';

class AppColors {
  static Color lightBackgroundColor = ColorHelper.hex('#F5F6FA');
  static Color black = ColorHelper.hex('#000');
  static Color pink = ColorHelper.hex('#DD2A7B');
  static Color white = ColorHelper.hex('#fff');
  static LinearGradient instagramGradientColor = LinearGradient(
    colors: [
      ColorHelper.hex('#fc0b7b'),
      ColorHelper.hex('#7820ad'),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
