import 'package:flutter/material.dart';

import 'widgets/IURProfileScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          IURProfileSection(),
        ],
      ),
    );
  }
}
