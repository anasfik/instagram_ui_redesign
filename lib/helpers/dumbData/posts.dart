import 'package:get/get.dart';

import '../../controllers/home_screen_controller/home_screen_controller.dart';
import '../../models/IURPost_model.dart';
import '../random_image_generator.dart';

final homeScreenController = Get.put(HomeScreenController());

List<IURPostModel> postsSamples = [
  IURPostModel(
    iURPostModelPageController: homeScreenController.pageControllerExample1,
    postId: 1,
    authorName: 'Maoo.lopez',
    authorImgPath: 'assets/images/add_story_item_profile.png',
    imgPaths: <String>[
      RandomImageGenerator.randomImage(),
      RandomImageGenerator.randomImage(),
      RandomImageGenerator.randomImage(),
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
      RandomImageGenerator.randomImage(),
      RandomImageGenerator.randomImage(),
      RandomImageGenerator.randomImage(),
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
