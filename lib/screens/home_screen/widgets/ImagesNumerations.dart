import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_screen_controller/home_screen_controller.dart';
import '../../../helpers/colors/colors.dart';
import '../../../models/IURPost_model.dart';

class ImagesNumerations extends StatelessWidget {
  const ImagesNumerations({
    Key? key,
    required this.homeScreenController,
    required this.post,
  }) : super(key: key);

  final HomeScreenController homeScreenController;
  final IURPostModel post;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 20,
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: IURColors.black.withOpacity(.25),
            borderRadius: BorderRadius.circular(20),
          ),
          child: AutoSizeText(
            "${(post.iURPostModelPageController == homeScreenController.pageControllerExample1 ? homeScreenController.scrollPosition1.value!.round() : homeScreenController.scrollPosition2.value!.round()) + 1} / ${post.imgPaths.length}",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: IURColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
          ),
        ),
      ),
    );
  }
}
