import 'package:flutter/painting.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';
import 'package:instagram_redesign/helpers/colors/colors_helper.dart';
import 'package:test/test.dart';

void main() {
  ColorHelper colorHelper = ColorHelper();
  group("test the ColorHelper", () {
    test("test #f0ff0f", () {
      expect(
        colorHelper.hex("#f0ff0f"),
        Color(0xfff0ff0f),
      );
    });

    test("test #f0f", () {
      expect(
        colorHelper.hex("#f0f"),
        Color(0xfff0ff0f),
      );
    });
  });
}
