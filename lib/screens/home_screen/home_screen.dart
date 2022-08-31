import 'package:flutter/material.dart';

import 'widgets/IURAppBar.dart';
import 'widgets/IURStoriesScrollView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        SizedBox(height: 50),
        IURAppBar(),
        IURStoriesScrollView(),
      ],
    ));
  }
}
