import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_screen_controller.dart';
import '../../../models/IURPost_model.dart';

class IndicatorDots extends StatelessWidget {
  const IndicatorDots({
    Key? key,
    required this.post,
    required this.homeScreenController,
  }) : super(key: key);

  final IURPostModel post;
  final HomeScreenController homeScreenController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                                homeScreenController.scrollPosition.value!
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
    );
  }
}
