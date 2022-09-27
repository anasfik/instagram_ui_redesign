import 'package:flutter/material.dart';

import '../../../models/IURStories_model.dart';
import 'IURProfile.dart';

class IURProfileSection extends StatelessWidget {
  const IURProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.deepPurple ?? Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 50) +
            const EdgeInsets.symmetric(
              horizontal: 20,
            ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  size: 28,
                ),
                Icon(
                  Icons.message,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  size: 28,
                ),
              ],
            ),
            IURProfile(),
          ],
        ),
      ),
    );
  }
}
