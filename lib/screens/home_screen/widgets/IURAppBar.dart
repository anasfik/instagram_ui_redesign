import 'package:flutter/widgets.dart';

import '../../../helpers/icons.dart';

class IURAppBar extends StatelessWidget {
  const IURAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          appBarItems.length,
          (i) => Semantics(
            label: appBarItems[i]["semanticLabel"],
            child: SvgIconsHelper.fromSvg(
              svgPath: appBarItems[i]["svgPath"]!,
              semanticLabel: appBarItems[i]["semanticLabel"]!,
            ),
          ),
        )
      ],
    );
  }
}

List<Map<String, String>> appBarItems = [
  {
    "semanticLabel": "",
    "svgPath": "assets/icons/plus.svg",
  },
  {
    "semanticLabel": "instagram logo",
    "svgPath": "assets/images/Instagram_logo.svg",
  },
  {
    "semanticLabel": "message icon",
    "svgPath": "assets/icons/message.svg",
  },
];
