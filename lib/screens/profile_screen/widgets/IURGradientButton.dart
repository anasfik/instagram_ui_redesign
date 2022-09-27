import 'package:flutter/material.dart';

import '../../../helpers/colors/colors.dart';

class IURGradientFollowButton extends StatelessWidget {
  const IURGradientFollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: AppColors.instagramGradientColor.colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        "Follow",
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
