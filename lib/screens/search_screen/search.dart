import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/search_screen/widgets/IURSearchField.dart';

import '../home_screen/widgets/QtatusBarSizedBox.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURCategoriesScrollView.dart';
import 'widgets/StaggeredPosts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const StatusBarSizedBox(
            additionalHeight: 10,
          ),
          const IURAppBar(),
          const SizedBox(
            height: 25,
          ),
          const IURCategoriesScrollView(),
          const SizedBox(
            height: 25,
          ),
          const IURSearchField(),
          const SizedBox(
            height: 25,
          ),
          StaggeredPosts(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
