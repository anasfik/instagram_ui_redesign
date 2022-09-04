import 'package:flutter/material.dart';

import '../../../helpers/random_image_generator.dart';

class IURSearchablePost extends StatelessWidget {
  const IURSearchablePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        RandomImageGenerator.randomImage(),
        fit: BoxFit.cover,
      ),
    );
  }
}
