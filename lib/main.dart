import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:instagram_redesign/helpers/routes.dart';
import 'package:instagram_redesign/helpers/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI redesign',
      getPages: AppRoutes.routes,
      initialRoute: '/',
    );
  }
}
