import 'package:flutter/cupertino.dart';

import '../../../helpers/colors/colors.dart';

class IURProfileImage extends StatelessWidget {
  const IURProfileImage({super.key});
  final double plusBottomPosition = 9,
      backgroundContainerSize = 100,
      plusIconSize = 22;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: backgroundContainerSize,
      width: backgroundContainerSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        gradient: IURColors.instagramGradientColor,
      ),
      child: Center(
        child: Transform.scale(
          scale: 0.92,
          child: Container(
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              "assets/postImgs/1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
