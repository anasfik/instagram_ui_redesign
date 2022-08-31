import 'package:flutter/material.dart';

import 'widgets/IURAppBar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 50),
          IURAppBar(),
          
        ],
      ),
    ));
  }
}
