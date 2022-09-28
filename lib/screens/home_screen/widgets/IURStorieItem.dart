import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';
import 'package:instagram_redesign/models/IURStories_model.dart';

import '../../../helpers/icons.dart';

class IURStorieItem extends StatelessWidget {
  const IURStorieItem({
    Key? key,
    required this.story,
  }) : super(key: key);

  final IURStoriesModel story;
  final double plusBottomPosition = 9,
      backgroundContainerSize = 72,
      plusIconSize = 22;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: plusBottomPosition),
            clipBehavior: Clip.none,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              fit: StackFit.loose,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  height: backgroundContainerSize,
                  width: backgroundContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: story.isAddStorieItem
                        ? null
                        : IURColors.instagramGradientColor,
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
                          story.imgPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                if (story.isAddStorieItem) ...[
                  Positioned(
                    bottom: -plusBottomPosition,
                    child: Container(
                      width: plusIconSize,
                      height: plusIconSize,
                      clipBehavior: Clip.none,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 2.5,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        gradient: IURColors.instagramGradientColor,
                      ),
                      child: Center(
                        child: SvgIconsHelper.fromSvg(
                          svgPath: "assets/icons/story_plus.svg",
                          color: Theme.of(context).scaffoldBackgroundColor,
                          semanticLabel: "Add",
                        ),
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
          AutoSizeText(
            story.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
