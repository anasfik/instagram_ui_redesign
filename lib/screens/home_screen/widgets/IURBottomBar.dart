import 'package:flutter/material.dart';

import '../../../helpers/colors/colors.dart';
import '../../../helpers/icons.dart';

class IURBottomBar extends StatelessWidget {
  const IURBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: const Key('bottomNavigationBar'),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          icon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/home.svg",
            semanticLabel: "home icon",
            color: AppColors.pink,
          ),
        ),
        BottomNavigationBarItem(
          label: "Home",
          icon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/search.svg",
            semanticLabel: "search icon",
          ),
        ),
        BottomNavigationBarItem(
          label: "just for taking extra space",
          icon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/bar_heart.svg",
            color: Colors.transparent,
            semanticLabel: "just for taking extra space",
          ),
        ),
        BottomNavigationBarItem(
          label: "heart",
          icon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/bar_heart.svg",
            semanticLabel: "heart icon",
          ),
        ),
        const BottomNavigationBarItem(
          label: "profile image",
          icon: CircleAvatar(
            radius: 14,
            backgroundImage:
                AssetImage("assets/images/add_story_item_profile.png"),
          ),
        ),
      ],
    );
  }
}
