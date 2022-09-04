import 'package:flutter/material.dart';

import '../../helpers/dumbData/posts.dart';
import 'widgets/ExploreTitle.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURPostCard.dart';
import 'widgets/IURStoriesScrollView.dart';
import 'widgets/QtatusBarSizedBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
