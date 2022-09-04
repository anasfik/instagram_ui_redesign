import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'IURSearchablePost.dart';

class StaggeredPosts extends StatelessWidget {
  StaggeredPosts({super.key});

  double ratio = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ...List.generate(
                10,
                (index) => index == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                        child: AutoSizeText(
                          "Popular",
                          maxLines: 1,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: const IURSearchablePost()),
              )
            ],
          ),
          Column(
            children: [
              ...List.generate(
                10,
                (index) => Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: const IURSearchablePost()),
              )
            ],
          )
        ],
      ),
    );
  }
}
