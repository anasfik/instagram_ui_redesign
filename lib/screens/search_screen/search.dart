import 'package:flutter/material.dart';

import '../../helpers/dumbData/posts.dart';
import '../home_screen/widgets/IURAppBar.dart';
import '../home_screen/widgets/QtatusBarSizedBox.dart';

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
        ],
      ),
    );
  }
}
