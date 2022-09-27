import 'package:flutter/material.dart';

import '../../../controllers/home_screen_controller/home_screen_controller.dart';
import '../../../models/IURPost_model.dart';

class ImagesPageView extends StatelessWidget {
  const ImagesPageView({
    Key? key,
    required this.homeScreenController,
    required this.post,
  }) : super(key: key);

  final HomeScreenController homeScreenController;
  final IURPostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              
              controller: post.iURPostModelPageController,
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
    );
  }
}
