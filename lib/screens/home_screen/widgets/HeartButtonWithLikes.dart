import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../helpers/colors/colors.dart';
import '../../../helpers/icons.dart';
import '../../../models/IURPost_model.dart';

class HeartButtonWithLikes extends StatelessWidget {
  const HeartButtonWithLikes({
    Key? key,
    required this.post,
  }) : super(key: key);

  final IURPostModel post;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      left: 20,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: post.isLiked ? IURColors.pink : IURColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgIconsHelper.fromSvg(
                svgPath: "assets/icons/heart.svg",
                semanticLabel: "heart icon",
                color: post.isLiked ? IURColors.white : IURColors.pink),
          ),
          const SizedBox(width: 5),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: IURColors.white.withOpacity(.7),
              borderRadius: BorderRadius.circular(30),
            ),
            child: AutoSizeText(
              "${post.likes}",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
