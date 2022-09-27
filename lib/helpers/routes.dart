import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:instagram_redesign/controllers/profile_screen_controller/profile_screen_controller.dart';
import 'package:instagram_redesign/screens/profile_screen/profile_screen.dart';

import '../screens/screens_handler.dart';

class AppRoutes {
  static List<GetPage> routes = <GetPage>[
    GetPage(
      name: "/",
      page: () => Homepage(),
    ),
    GetPage(
      name: "/profile",
      page: () => const ProfileScreen(),
    ),
  ];
}
