import 'package:flutter/material.dart';
import 'package:instagram_redesign/helpers/colors/colors.dart';

class IURProfileName extends StatelessWidget {
  const IURProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Mauricio Lopez",
      style: Theme.of(context).textTheme.headline1!.copyWith(
            color: IURColors.white,
          ),
    );
  }
}
