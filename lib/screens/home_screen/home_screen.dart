import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/home_screen/widgets/IURPostCard.dart';

import '../../models/IURPost_model.dart';
import 'widgets/ExploreTitle.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURStoriesScrollView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        const IURAppBar(),
        const IURStoriesScrollView(),
        const ExploreTitle(),
        IURPostCard(post: firstPost),
      ],
    ));
  }
}

IURPostModel firstPost = IURPostModel(
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
);
