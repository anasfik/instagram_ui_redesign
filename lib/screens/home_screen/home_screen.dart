import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_redesign/controllers/home_screen_controller.dart';
import 'package:instagram_redesign/screens/home_screen/widgets/IURBottomBar.dart';
import 'package:instagram_redesign/screens/home_screen/widgets/IURPostCard.dart';


import '../../models/IURPost_model.dart';
import 'widgets/ExploreTitle.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURFAB.dart';
import 'widgets/IURStoriesScrollView.dart';
import 'widgets/QtatusBarSizedBox.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: IURBottomBar(),
        ),
      ),
      floatingActionButton: const IURFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StatusBarSizedBox(
              additionalHeight: 10,
            ),
            const IURAppBar(),
            const SizedBox(
              height: 25,
            ),
            const IURStoriesScrollView(),
            const SizedBox(
              height: 10,
            ),
            const ExploreTitle(),
            const SizedBox(
              height: 20,
            ),
            ...List.generate(
              postsSamples.length,
              (index) => IURPostCard(
                key: Key("postCard$index"),
                post: postsSamples[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}




final homeScreenController = Get.put(HomeScreenController());

List<IURPostModel> postsSamples = [
  IURPostModel(
    iURPostModelPageController: homeScreenController.pageControllerExample1,
    postId: 1,
    authorName: 'Maoo.lopez',
    authorImgPath: 'assets/images/add_story_item_profile.png',
    imgPaths: <String>[
      "assets/postImgs/space.png",
      "assets/postImgs/space.png",
      "assets/postImgs/space.png",
    ],
    title: "SACRIFICE | VIRUS",
    description: "this photomanipulation inspired in the virus ",
    tags: <String>["space"],
    likes: 7820,
    isLiked: true,
    comments: 428,
    showCaseComment: 'Esta edición está super genial, que pro!!',
    showCaseCommentAuthor: "Perla_Pipol",
    timeOfPublish: DateTime.now().subtract(
      const Duration(minutes: 27),
    ),
  ),
  IURPostModel(
    iURPostModelPageController: homeScreenController.pageControllerExample2,
    postId: 1,
    authorName: 'Maoo.lopez',
    authorImgPath: 'assets/images/add_story_item_profile.png',
    imgPaths: <String>[
      "assets/postImgs/space.png",
      "assets/postImgs/space.png",
      "assets/postImgs/space.png",
    ],
    title: "SACRIFICE | VIRUS",
    description: "this photomanipulation inspired in the virus ",
    tags: <String>["space"],
    likes: 7820,
    isLiked: true,
    comments: 428,
    showCaseComment: 'Esta edición está super genial, que pro!!',
    showCaseCommentAuthor: "Perla_Pipol",
    timeOfPublish: DateTime.now().subtract(
      const Duration(minutes: 27),
    ),
  ),
];
