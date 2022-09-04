import 'package:flutter/material.dart';
import 'package:instagram_redesign/models/IURStories_model.dart';

import '../../../helpers/random_image_generator.dart';
import 'IURStorieItem.dart';

class IURStoriesScrollView extends StatelessWidget {
  const IURStoriesScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          "scroll view for showing users stories with the add new story item",
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                iURStories.length,
                (index) => IURStorieItem(
                  story: iURStories[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<IURStoriesModel> iURStories = [
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "",
      isAddStorieItem: true),
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "Luz.anzo",
      isAddStorieItem: false),
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "Alice_002",
      isAddStorieItem: false),
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "Perla_Pipol",
      isAddStorieItem: false),
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "Cambray_Style",
      isAddStorieItem: false),
  IURStoriesModel(
      imgPath: RandomImageGenerator.randomImage(),
      title: "Perla_Pipol",
      isAddStorieItem: false),
];
