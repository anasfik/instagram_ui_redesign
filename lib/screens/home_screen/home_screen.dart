import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/home_screen/widgets/IURPostCard.dart';

import '../../helpers/colors/colors.dart';
import '../../helpers/colors/colors_helper.dart';
import '../../helpers/icons.dart';
import '../../models/IURPost_model.dart';
import 'widgets/ExploreTitle.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURStoriesScrollView.dart';
import 'widgets/QtatusBarSizedBox.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: BottomNavigationBar(
            key: const Key('bottomNavigationBar'),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgIconsHelper.fromSvg(
                  svgPath: "assets/icons/home.svg",
                  semanticLabel: "home icon",
                  color: AppColors.pink,
                ),
              ),
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgIconsHelper.fromSvg(
                  svgPath: "assets/icons/search.svg",
                  semanticLabel: "search icon",
                ),
              ),
              BottomNavigationBarItem(
                label: "just for taking extra space",
                icon: SvgIconsHelper.fromSvg(
                  svgPath: "assets/icons/bar_heart.svg",
                  color: Colors.transparent,
                  semanticLabel: "just for taking extra space",
                ),
              ),
              BottomNavigationBarItem(
                label: "heart",
                icon: SvgIconsHelper.fromSvg(
                  svgPath: "assets/icons/bar_heart.svg",
                  semanticLabel: "heart icon",
                ),
              ),
              const BottomNavigationBarItem(
                label: "profile image",
                icon: CircleAvatar(
                  radius: 14,
                  backgroundImage:
                      AssetImage("assets/images/add_story_item_profile.png"),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          gradient: AppColors.floatingActionButtonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgIconsHelper.fromSvg(
            svgPath: "assets/icons/instagram.svg",
            semanticLabel: "instagram icon",
            color: AppColors.white,
          ),
        ),
      ),
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
                post: postsSamples[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<IURPostModel> postsSamples = [
  IURPostModel(
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
