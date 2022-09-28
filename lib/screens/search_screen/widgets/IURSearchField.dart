import 'package:flutter/material.dart';
import 'package:instagram_redesign/helpers/colors/colors_helper.dart';
import 'package:instagram_redesign/helpers/icons.dart';

import '../../../helpers/colors/colors.dart';

class IURSearchField extends StatelessWidget {
  const IURSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        cursorColor: IURColors.pink,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                color: Theme.of(context).primaryColor.withOpacity(.2),
                fontWeight: FontWeight.w500,
              ),
          prefixIcon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/search_field.svg",
            semanticLabel: "search icon",
            color: ColorHelper.hex("#31323B"),
          ),
          suffixIcon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/qr.svg",
            semanticLabel: "qr icon",
            color: IURColors.pink,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
