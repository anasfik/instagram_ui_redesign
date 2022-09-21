import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:instagram_redesign/controllers/screens_handler_controller/screens_handler_controller.dart';

import '../../../helpers/colors/colors.dart';
import '../../../helpers/dumbData/bottomNavigationBarItems.dart';
import '../../../helpers/icons.dart';

class IURBottomBar extends StatelessWidget {
  const IURBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScreensHandlerController>(
      builder: (_) {
        return BottomNavigationBar(
          key: const Key('bottomNavigationBar'),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            _.showScreenWithIndexOf(index);
          },
          items: <BottomNavigationBarItem>[
            ...List.generate(
              bottomNavigationItems.length,
              (index) => BottomNavigationBarItem(
                label: bottomNavigationItems[index]['label'],
                icon: bottomNavigationItems[index]['profileImg'] != null
                    ? CircleAvatar(
                        radius:
                            bottomNavigationItems[index]['radius'] as double,
                        backgroundImage: AssetImage(
                            bottomNavigationItems[index]['profileImg']),
                      )
                    : SvgIconsHelper.fromSvg(
                        svgPath: bottomNavigationItems[index]['svgPath'],
                        semanticLabel: bottomNavigationItems[index]
                            ['semanticLabel'],
                        color: bottomNavigationItems[index]['color'],
                      ),
              ),
            )
          ],
        );
      },
    );
  }
}
