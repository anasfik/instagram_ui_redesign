import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ExploreTitle extends StatelessWidget {
  const ExploreTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: AutoSizeText(
        "Explore",
        style: Theme.of(context).textTheme.headline1,
        maxLines: 1,
      ),
    );
  }
}
