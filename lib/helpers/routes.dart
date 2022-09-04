import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/screens_handler.dart';

class AppRoutes {
  static List<GetPage> routes = <GetPage>[
    GetPage(
      name: "/",
      page: () => Homepage(),
    ),
  ];
}
