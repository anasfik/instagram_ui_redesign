import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/home_screen/home_screen.dart';

class AppRoutes {
  static List<GetPage> routes = <GetPage>[
    GetPage(
      name: "/",
      page: () => const Homepage(),
    ),
  ];
}
