import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';
import 'package:instagram_redesign/helpers/icons.dart';

import '../../../controllers/home_screen_controller.dart';
import '../../../models/IURPost_model.dart';
import 'CommentButton.dart';
import 'HeartButtonWithLikes.dart';
import 'ImagesNumerations.dart';
import 'ImagesPageView.dart';
import 'IndicatorDots.dart';

class IURPostCard extends StatelessWidget {
  IURPostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
  final IURPostModel post;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            label: "general information about post, authorName, authorImg",
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Semantics(
                        label: "author image",
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(post.authorImgPath),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Semantics(
                            label: "author name",
                            child: AutoSizeText(
                              post.authorName,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Semantics(
                            label: "time of publish differance from now",
                            child: AutoSizeText(
                              "${DateTime.now().difference(post.timeOfPublish).inMinutes} min ago",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgIconsHelper.fromSvg(
                        svgPath: "assets/icons/send.svg",
                        semanticLabel: "send icon",
                        size: 20,
                        color: Theme.of(context).primaryColor.withOpacity(.6),
                      ),
                      const SizedBox(width: 10),
                      SvgIconsHelper.fromSvg(
                        svgPath: "assets/icons/items.svg",
                        semanticLabel: "items icon",
                        size: 15,
                        color: Theme.of(context).primaryColor.withOpacity(.6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ImagesPageView(
                  homeScreenController: homeScreenController,
                  post: post,
                ),
                IndicatorDots(
                  post: post,
                  homeScreenController: homeScreenController,
                ),
                ImagesNumerations(
                  homeScreenController: homeScreenController,
                  post: post,
                ),
                HeartButtonWithLikes(
                  post: post,
                ),
                const CommentButton(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withOpacity(.6),
                        ),
                    children: [
                      const TextSpan(text: "Liked by "),
                      TextSpan(
                        text: "${post.likes}",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.black.withOpacity(1)),
                      ),
                      const TextSpan(text: " people"),
                    ],
                  ),
                ),
                AutoSizeText.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withOpacity(1),
                          fontSize: 14,
                        ),
                    children: [
                      TextSpan(
                        text: "${post.title} ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: post.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                //
                AutoSizeText.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withOpacity(.35),
                        ),
                    children: [
                      const TextSpan(text: "See all"),
                      TextSpan(
                        text: "${post.comments}",
                      ),
                      const TextSpan(text: " comments"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
