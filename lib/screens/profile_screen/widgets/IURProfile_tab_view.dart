import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:instagram_redesign/helpers/random_image_generator.dart';

import '../../../controllers/profile_screen_controller/profile_screen_controller.dart';

class IURProfileTabView extends GetView<ProfileScreenController> {
  const IURProfileTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.tabController,
      children: <Widget>[
        ...List.generate(
          controller.tabsTexts.length,
          (index) => MasonryGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            itemCount: 10,
            padding: const EdgeInsets.all(5),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 100,
                  height: index % 5.5 * 100,
                  color: Colors.pink,
                  child: Image.asset(
                    RandomImageGenerator.randomImage(),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
