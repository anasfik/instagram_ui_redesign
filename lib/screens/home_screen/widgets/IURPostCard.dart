import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';
import 'package:instagram_redesign/helpers/icons.dart';

import '../../../controllers/home_screen_controller.dart';
import '../../../models/IURPost_model.dart';

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
          Container(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior().copyWith(
                          overscroll: false,
                        ),
                        child: PageView.builder(
                          controller: homeScreenController.pageController,
                          clipBehavior: Clip.hardEdge,
                          itemCount: post.imgPaths.length,
                          itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            child: Image.asset(
                              post.imgPaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Obx(
                    () => Container(
                      width: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            post.imgPaths.length,
                            (index) => Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(index ==
                                            homeScreenController
                                                .scrollPosition.value!
                                                .round()
                                        ? 1
                                        : 0.3),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 6,
                              height: 6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 20,
                  child: Obx(
                    () => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(.25),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: AutoSizeText(
                        "${homeScreenController.scrollPosition.value!.round() + 1} / ${post.imgPaths.length}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color:
                              post.isLiked ? AppColors.pink : AppColors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: SvgIconsHelper.fromSvg(
                            svgPath: "assets/icons/heart.svg",
                            semanticLabel: "heart icon",
                            color: post.isLiked
                                ? AppColors.white
                                : AppColors.pink),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(.7),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: AutoSizeText(
                          "${post.likes}",
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 20,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgIconsHelper.fromSvg(
                      svgPath: "assets/icons/comment.svg",
                      semanticLabel: "comment icon",
                      color: AppColors.black,
                    ),
                  ),
                )
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
