import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram_redesign/helpers/colors/colors_helper.dart';

class IURColors {
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

  static LinearGradient floatingActionButtonColor = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    stops: const [0, 0.33, 0.66],
    colors: [
      ColorHelper.hex("#7820AD"),
      ColorHelper.hex("#FC0B7B"),
      ColorHelper.hex("#FF543E"),
    ],
  );
}
