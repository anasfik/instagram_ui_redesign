import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            color: Colors.yellow[900],
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
                      width: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            post.imgPaths.length,
                            (index) => Container(
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(index ==
                                        homeScreenController
                                            .scrollPosition.value!
                                            .round()
                                    ? 1
                                    : 0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 10,
                              height: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
