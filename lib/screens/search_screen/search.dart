import 'package:flutter/material.dart';

import '../home_screen/widgets/QtatusBarSizedBox.dart';
import 'widgets/IURAppBar.dart';
import 'widgets/IURCategoriesScrollView.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          StatusBarSizedBox(
            additionalHeight: 10,
          ),
          IURAppBar(),
          SizedBox(
            height: 25,
          ),
          IURCategoriesScrollView()
        ],
      ),
    );
  }
}
