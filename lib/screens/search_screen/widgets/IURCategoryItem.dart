import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';
import 'package:instagram_redesign/helpers/icons.dart';

class IURCategoryItem extends StatelessWidget {
  IURCategoryItem({
    Key? key,
    required this.svgPath,
    required this.title,
    this.isIGTV = false,
    this.label = "",
    this.color,
  }) : super(key: key);

  String svgPath, title, label;
  bool isIGTV;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 110,
      margin: const EdgeInsets.only(right: 7.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: !isIGTV ? color : null,
        gradient: isIGTV ? IURColors.floatingActionButtonColor : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgIconsHelper.fromSvg(
            svgPath: svgPath,
            semanticLabel: label,
            size: 50,
            color: IURColors.white,
          ),
          AutoSizeText(
            title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: IURColors.white,
                  fontWeight: FontWeight.w500,
                ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
