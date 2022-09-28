import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../controllers/profile_screen_controller/profile_screen_controller.dart';
import 'widgets/IURProfileTabs.dart';
import 'widgets/IURProfileScreen.dart';
import 'widgets/IURProfile_tab_view.dart';
import 'widgets/IURProfilesScrollView.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const IURProfileSection(),
          const SizedBox(
            height: 10,
          ),
          const IURProfilesScrollView(),
          const SizedBox(
            height: 10,
          ),
          IURProfileTabs(),
          SizedBox(
              height: 1300,
              width: MediaQuery.of(context).size.width - 10,
              child: const IURProfileTabView()),
        ],
      ),
    );
  }
}
