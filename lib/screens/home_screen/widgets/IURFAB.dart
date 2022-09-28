import 'package:flutter/material.dart';

import '../../../helpers/colors/colors.dart';
import '../../../helpers/icons.dart';

class IURFAB extends StatefulWidget {
  const IURFAB({
    Key? key,
  }) : super(key: key);

  @override
  State<IURFAB> createState() => _IURFABState();
}

class _IURFABState extends State<IURFAB> {
  double _scale = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        setState(() {
          _scale = 0.95;
        });
      },
      onPanCancel: () {
        setState(() {
          _scale = 1;
        });
      },
      child: AnimatedScale(
        duration: const Duration(milliseconds: 100),
        scale: _scale,
        curve: Curves.elasticInOut,
        child: Material(
          color: Colors.transparent,
          child: Ink(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              gradient: IURColors.floatingActionButtonColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              splashColor: Colors.purple.withOpacity(.6),
              highlightColor: Colors.transparent,
              child: SvgIconsHelper.fromSvg(
                svgPath: "assets/icons/instagram.svg",
                semanticLabel: "instagram icon",
                color: IURColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
